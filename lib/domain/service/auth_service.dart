import 'dart:async';

import 'package:dio/dio.dart';
import 'package:farm_app/domain/url/auth_url.dart';
import 'package:farm_app/domain/entity/auth/auth_email_part1_request.dart';
import 'package:farm_app/domain/entity/auth/auth_email_part1_response.dart';
import 'package:farm_app/domain/entity/auth/auth_email_part2_request.dart';
import 'package:farm_app/domain/entity/auth/auth_email_part2_response.dart';
import 'package:farm_app/domain/entity/auth/auth_register_request.dart';
import 'package:farm_app/domain/entity/auth/auth_register_response.dart';
import 'package:retrofit/http.dart';


part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST(AuthUrl.authEmailPart1)
  Future<AuthEmailPart1Response> authEmailPart1({
    @Body() required AuthEmailPart1Request request,
  });

  @POST(AuthUrl.authEmailPart2)
  Future<AuthEmailPart2Response> authEmailPart2({
    @Body() required AuthEmailPart2Request request,
  });

  @POST(AuthUrl.authRegister)
  Future<AuthRegisterResponse> authRegister({
    @Body() required AuthRegisterRequest request,
  });

}
