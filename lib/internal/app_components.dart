import 'package:dio/dio.dart';
import 'package:farm_app/data/interseptor.dart';
import 'package:farm_app/domain/token_ropository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const timeout = Duration(seconds: 30);

class AppComponents {
  static final AppComponents _instance = AppComponents._internal();

  factory AppComponents() => _instance;

  AppComponents._internal();

  final Dio dio = Dio();
  final TokenRepository tokenRepository = TokenRepository();

  Future<void> init() async {
    dio.options
      ..baseUrl = 'https://690a-94-25-60-188.ngrok-free.app/'
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;
    dio.interceptors.add(PrettyDioLogger());

    await tokenRepository.initTokens();

    dio.interceptors.add(
      JWTInterceptor(
        repository: tokenRepository,
        dio: dio,
      ),
    );
  }
}
