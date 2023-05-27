import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/data/service/cart_service.dart';
import 'package:farm_app/data/service/catalog_service.dart';
import 'package:farm_app/domain/entity/cart/calculated_cart.dart';
import 'package:farm_app/domain/models/deliveries_request.dart';
import 'package:farm_app/domain/models/delivery.dart';
import 'package:farm_app/domain/models/order_request.dart';
import 'package:farm_app/domain/use_case/cart_use_case.dart';
import 'package:farm_app/internal/app_components.dart';
import 'package:farm_app/internal/logger.dart';
import 'package:farm_app/router/app_router.dart';
import 'package:farm_app/util/snack_bar_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:intl/intl.dart';
import 'order_page_model.dart';
import 'order_page_widget.dart';

abstract class IOrderPageWidgetModel extends IWidgetModel {
  EntityStateNotifier<DateTime> get dateState;

  EntityStateNotifier<int?> get repeatState;

  EntityStateNotifier<(List<Delivery>, Delivery?)> get deliveriesState;

  EntityStateNotifier<(List<Payment>, Payment?)> get paymentsState;

  TextEditingController get nameController;

  TextEditingController get phoneController;

  TextEditingController get emailController;

  TextEditingController get addressController;

  TextEditingController get commentController;

  void selectDelivery(Delivery deliveri);

  void selectPayment(Payment payment);

  void changeDay();

  void changeRepeat();

  void makeOrder();
}

OrderPageWidgetModel defaultOrderPageWidgetModelFactory(BuildContext context) {
  return OrderPageWidgetModel(
    model: OrderPageModel(),
    catalogService: AppComponents().catalogService,
    cartService: AppComponents().cartUseCase,
  );
}

// TODO: cover with documentation
/// Default widget model for OrderPageWidget
class OrderPageWidgetModel extends WidgetModel<OrderPageWidget, OrderPageModel>
    implements IOrderPageWidgetModel {
  OrderPageWidgetModel({
    required OrderPageModel model,
    required this.catalogService,
    required this.cartService,
  }) : super(model);

  final CatalogService catalogService;
  final CartUseCase cartService;

  @override
  final repeatState = EntityStateNotifier();
  @override
  final dateState = EntityStateNotifier();
  @override
  final deliveriesState = EntityStateNotifier();
  @override
  final paymentsState = EntityStateNotifier();
  @override
  final nameController = TextEditingController();
  @override
  final phoneController = MaskedTextController(mask: '+7(000)-000-00-00');
  @override
  final emailController = TextEditingController();
  @override
  final addressController = TextEditingController();
  @override
  final commentController = TextEditingController();

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    final profile = AppComponents().profileUseCase;

    final user = profile.profile.valueOrNull;
    if (user != null) {
      nameController.text = '${user.firstName ?? ''} ${user.secondName ?? ''}';
      phoneController.text = user.phone?.substring(1) ?? '';
      emailController.text = user.email;
    }
    loadDeliveries();
    deliveriesState.addListener(loadPayments);
    dateState.content(DateTime.now());
    repeatState.content(null);
  }

  Future<void> loadDeliveries() async {
    try {
      final deliveries = await catalogService.getDeliveries(
        request: DeliveriesRequest(
          products: widget.productIds,
        ),
      );
      deliveriesState.content((deliveries, deliveries.firstOrNull));
    } catch (e, s) {
      logger.e('Catalog error', e, s);
      context.showSnackBar('Не удалось загрузить доставки');
    }
  }

  Future<void> loadPayments() async {
    try {
      final delivery = deliveriesState.value!.data?.$2;
      final payments = await catalogService.getPayments(
        request: PaymentsRequest(
          products: widget.productIds,
          deliveryId: delivery?.id ?? 'p',
        ),
      );
      paymentsState.content((payments, payments.firstOrNull));
    } catch (e, s) {
      logger.e('Catalog error', e, s);
      context.showSnackBar('Не удалось загрузить доставки');
    }
  }

  @override
  void dispose() {
    deliveriesState.removeListener(loadPayments);
    repeatState.dispose();
    addressController.dispose();
    commentController.dispose();
    dateState.dispose();
    deliveriesState.dispose();
    paymentsState.dispose();
    phoneController.dispose();
    emailController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  void selectDelivery(Delivery deliveri) {
    final deliveries = deliveriesState.value!.data!.$1;

    deliveriesState.content((deliveries, deliveri));
  }

  @override
  void selectPayment(Payment payment) {
    final payments = paymentsState.value!.data!.$1;

    paymentsState.content((payments, payment));
  }

  @override
  void changeDay() {}

  @override
  void changeRepeat() {}

  @override
  Future<void> makeOrder() async {
    final deliveries = deliveriesState.value?.data?.$1 ?? [];
    final selectedDelivery = deliveriesState.value?.data?.$2;
    final selectedPayment = paymentsState.value?.data?.$2;
    var format = dateState.value!.data!.toIso8601String();
    final index = format.indexOf('T');

    final orderRequest = OrderRequest(
      products: widget.productIds,
      user_name: nameController.text,
      user_phone: phoneController.text,
      user_email: emailController.text,
      delivery_id: selectedDelivery?.id ?? '',
      delivery_type: selectedDelivery?.type ?? '',
      delivery_date: format.substring(0, index),
      payment_id: selectedPayment?.id ?? '',
      payment_type: selectedPayment?.type ?? '',
      address: addressController.text,
      comment: commentController.text,
      repeated_days: repeatState.value?.data,
    );

    try {
      final order = await catalogService.postOrder(
        request: orderRequest,
      );

      if (selectedPayment?.type == 'card') {
        final resp = await AppComponents().dio.post('/payments/pay/', data: {
          'id': order.id,
        });

        await context.router.push(
          WebViewerRoute(
            title: 'Оплата',
            url: resp.data['url'],
            onPageFinished: (url){
              if(url.contains('success') || url.contains('failed')){
                 context.router.pop();
              }
            }
          ),
        );
      }

      cartService.loadCart(
        request: CalculatedCart(),
      );

      context.router.replace(
        OrderResultRoute(
          order: order,
        ),
      );
    } on DioError catch (e, s) {
      logger.e('Catalog error', e, s);
      context.showSnackBar(e.response?.data['error_text']);
    } catch (e, s) {
      logger.e('Catalog error', e, s);
      context.showSnackBar('Не удалось оформить заказ');
    }
  }
}
