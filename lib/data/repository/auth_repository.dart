import 'package:dio/dio.dart';
import 'package:farm_app/data/service/auth_service.dart';
import 'package:farm_app/domain/entity/auth/auth_email_part1_request.dart';
import 'package:farm_app/domain/entity/auth/auth_email_part2_request.dart';
import 'package:farm_app/domain/entity/auth/auth_email_part2_response.dart';
import 'package:farm_app/domain/entity/auth/auth_register_request.dart';
import 'package:farm_app/domain/entity/auth/auth_register_response.dart';

class AuthRepository{
  AuthRepository(
    this._authService,
  );

  final AuthService _authService;

  @override
  Future<void> emailPart1({
    required AuthEmailPart1Request request,
  }) async {
    try {
      await _authService.authEmailPart1(
        request: request,
      );
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  @override
  Future<AuthEmailPart2Response> emailPart2({
    required AuthEmailPart2Request request,
  }) async {
    try {
      final result = await _authService.authEmailPart2(
        request: request,
      );
      return result;
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  @override
  Future<AuthRegisterResponse> register(
      {required AuthRegisterRequest request}) async {
    try {
      final result = await _authService.authRegister(
        request: request,
      );
      return result;
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }
}
