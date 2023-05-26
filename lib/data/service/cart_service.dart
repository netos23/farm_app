import 'dart:async';

import 'package:dio/dio.dart';
import 'package:farm_app/domain/entity/cart/calc_cart.dart';
import 'package:farm_app/domain/entity/cart/calculated_cart.dart';
import 'package:farm_app/domain/entity/cart/cart_update.dart';
import 'package:farm_app/domain/url/cart_url.dart';
import 'package:retrofit/http.dart';

part 'cart_service.g.dart';

@RestApi()
abstract class CartService {
  factory CartService(Dio dio, {String baseUrl}) = _CartService;

  @POST(CartUrl.cartCalculate)
  Future<CalcCart> cartCalc({
    @Body() required CalculatedCart request,
  });

  @POST(CartUrl.cartCart)
  Future<CalcCart> postCart({
    @Body() required CartUpdate request,
  });

  @PUT(CartUrl.cartCart)
  Future<CartUpdate> putCart({
    @Body() required CartUpdate request,
  });

  @DELETE(CartUrl.cartCart)
  Future<CartUpdate> deleteCart({
    @Body() required CartUpdate request,
  });
}
