import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/data/repository/dadata_repository.dart';
import 'package:farm_app/data/service/cart_service.dart';
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
import 'cart_page_model.dart';
import 'cart_page_widget.dart';

abstract class ICartPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<CalcCart?> get cartState;

  EntityStateNotifier<GeoData> get geoState;

  GeolocationDadataRepository get geolocationDadataRepository;

  CartUseCase get cartUseCase;

  void openSort();

  void openProduct({required Product product});
}

CartPageWidgetModel defaultCartPageWidgetModelFactory(BuildContext context) {
  return CartPageWidgetModel(CartPageModel());
}

class CartPageWidgetModel extends WidgetModel<CartPageWidget, CartPageModel>
    with ThemeProvider
    implements ICartPageWidgetModel {
  @override
  final cartState = EntityStateNotifier();

  @override
  final cartUseCase = AppComponents().cartUseCase;

  @override
  final geolocationDadataRepository = AppComponents().dadataRepository;

  CartPageWidgetModel(CartPageModel model) : super(model);

  StreamSubscription? sub;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    getCity();
    loadCart();
    sub = cartUseCase.cart.stream.listen((event) {
      cartState.content(event);
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

  Future<void> loadCart() async {
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
}
