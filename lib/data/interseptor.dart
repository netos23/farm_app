import 'package:dio/dio.dart';
import 'package:farm_app/domain/token_ropository.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Interceptor for working with JWT tokens, updating and saving them.
/// Requires [Dio] to work.

class JWTInterceptor extends QueuedInterceptor {
  /// Create instance of [JWTInterceptor].
  JWTInterceptor({
    required this.repository,
    required Dio dio,
  }) : _dio = dio;

  final TokenRepository repository;

  /// Http client.
  final Dio _dio;

  /// JWT token.
  String? get _accessToken => repository.accessToken;

  /// JWT refresh token.
  String? get _refreshToken => repository.refreshToken;

  /// Add JWT authorization token to any request, if available.
  @override
  void onRequest(options, handler) {
    if (_accessToken != null) {
      options.headers['Authorization'] = 'Bearer $_accessToken';
    }

    return super.onRequest(options, handler);
  }

  /// Save tokens received after authorization.
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.requestOptions.path == '/auth/v1/phone/part2') {
      repository.saveTokens(
        accessToken: response.data['data']['access_token'],
        refreshToken: response.data['data']['refresh_token'],
      );
    }

    super.onResponse(response, handler);
  }

  /// Update JWT token if it is outdated.
  @override
  Future onError(error, handler) async {
    // todo(netos23): fix it
    if ((error.response?.statusCode == 403 ||
            error.response?.statusCode == 401) &&
        error.requestOptions.path != '/auth/v1/phone/part1') {

      await _refresh();
      if(repository.auth) {
        final response = await _retry(error.requestOptions);
        handler.resolve(response);
      }
    }
    return super.onError(error, handler);
  }

  /// Make a request to update the JWT token and save it to cache.
  Future<void> _refresh() async {
    try {
      final response = await _dio.post(
        '/auth/v1/token/refresh',
        data: {
          'refresh_token': _refreshToken,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        repository.saveTokens(
          accessToken: response.data['data']['access_token'],
          refreshToken: response.data['data']['refresh_token'],
        );
      }
    }catch(e){
      repository.deleteTokens();
    }
  }

  /// Repeat the failed request.
  Future<Response<dynamic>> _retry(RequestOptions requestOptions) {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

/*
  Future<void> _getFreeToken({bool isInit = false}) async {
    final response = await _dio.post('/auth/v1/token/free',
        data: {'user_uuid': UuidManager.cachedUuid},
        options: Options(
          headers: {
            'Authorization': 'Basic YXBwOmZpdHRpbmFwcA==',
          },
        ));

    if (isInit) {
      await _saveTokens(response, isFreeToken: true);
    }
  }*/
}
