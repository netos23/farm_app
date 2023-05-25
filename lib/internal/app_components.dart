import 'package:dio/dio.dart';
import 'package:farm_app/data/interseptor.dart';
import 'package:farm_app/data/service/auth_service.dart';
import 'package:farm_app/data/repository/token_ropository.dart';
import 'package:farm_app/data/service/banner_service.dart';
import 'package:farm_app/data/service/catalog_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const timeout = Duration(seconds: 30);

class AppComponents {
  static final AppComponents _instance = AppComponents._internal();

  factory AppComponents() => _instance;

  AppComponents._internal();

  final Dio dio = Dio();
  final TokenRepository tokenRepository = TokenRepository();
  late final AuthService authService = AuthService(dio);
  late final BannerService bannerService = BannerService(dio);
  late final CatalogService catalogService = CatalogService(dio);

  Future<void> init() async {
    dio.options
      ..baseUrl = 'http://85.193.85.188:8000/'
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
