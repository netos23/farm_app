import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/data/repository/dadata_repository.dart';
import 'package:farm_app/domain/entity/cart/calc_cart.dart';
import 'package:farm_app/domain/entity/cart/calculated_cart.dart';
import 'package:farm_app/domain/entity/cart/cart_product.dart';
import 'package:farm_app/domain/entity/dadata/geo_data.dart';
import 'package:farm_app/domain/models/product.dart';
import 'package:farm_app/domain/use_case/cart_use_case.dart';
import 'package:farm_app/internal/app_components.dart';
import 'package:farm_app/router/app_router.dart';
import 'package:farm_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'subscriprion_page_widget.dart';
import 'subscription_page_model.dart';

abstract class ISubscriptionPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<CalcCart?> get cartState;

  ValueNotifier<bool> get orderState;

  EntityStateNotifier<Set<int>> get disabledSubscription;

  EntityStateNotifier<GeoData> get geoState;

  GeolocationDadataRepository get geolocationDadataRepository;

  CartUseCase get cartUseCase;

  void openSort();

  void openProduct({required Product product});

  void onSelect(CartProduct product, bool? value);

  void order();
}

SubscriptionPageWidgetModel defaultSubscriptionPageWidgetModelFactory(BuildContext context) {
  return SubscriptionPageWidgetModel(SubscriptionPageModel());
}

class SubscriptionPageWidgetModel extends WidgetModel<SubscriptionPageWidget, SubscriptionPageModel>
    with ThemeProvider
    implements ISubscriptionPageWidgetModel {
  @override
  final cartState = EntityStateNotifier();

  @override
  final cartUseCase = AppComponents().cartUseCase;

  @override
  final disabledSubscription = EntityStateNotifier();

  @override
  final orderState = ValueNotifier(true);

  @override
  final geolocationDadataRepository = AppComponents().dadataRepository;

  SubscriptionPageWidgetModel(SubscriptionPageModel model) : super(model);

  StreamSubscription? sub;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    getCity();
    loadSubscription();
    sub = cartUseCase.cart.stream.listen((event) {
      cartState.content(event);
      final off = disabledSubscription.value?.data ?? {};

      final products = event?.products ?? [];
      off.removeWhere(
        (id) => !products.any(
          (p) => p.product.id == id,
        ),
      );

      disabledSubscription.content(Set.of(off));
    });
  }

  @override
  void dispose() {
    sub?.cancel();
    cartState.dispose();
    geoState.dispose();

    super.dispose();
  }

  @override
  void openSort() {
    // todo implents
  }

  @override
  void openProduct({required Product product}) {
    context.router.navigate(
      ProductRoute(
        productId: product.id,
        product: product,
      ),
    );
  }

  Future<void> loadSubscription() async {
    final fias = geoState.value?.data?.cityFias ?? '';
    if (fias.isNotEmpty) {
      await cartUseCase.loadCart(
        request: CalculatedCart(cityFias: fias),
      );
    } else {
      await cartUseCase.loadCart(
        request: CalculatedCart(),
      );
    }
  }

  Future<void> getCity() async {
    final geoData = await geolocationDadataRepository.getGeolocationByIp();
    geoState.content(geoData);
  }

  @override
  final geoState = EntityStateNotifier();

  @override
  void onSelect(CartProduct product, bool? value) {
    final ch = value ?? false;
    final off = disabledSubscription.value?.data ?? {};

    if (!ch) {
      off.add(product.product.id);
    } else {
      off.remove(product.product.id);
    }

    disabledSubscription.content(Set.of(off));
  }

  @override
  Future<void> order() async {
    final profile = AppComponents().profileUseCase;

    orderState.value = false;
    await profile.loadProfile();
    orderState.value = true;

    if (isMounted) {
      router.navigate(
        OrderRoute(),
      );
    }
  }
}
