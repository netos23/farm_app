// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _CatalogService implements CatalogService {
  _CatalogService(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CatalogCategoriesResponse> getCategories(
      {required CatalogCategoriesRequest request}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CatalogCategoriesResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/catalog/categories/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CatalogCategoriesResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProductDetailResponse> getProductDetail(
      {required ProductDetailRequest request}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProductDetailResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/catalog/product/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProductDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CatalogProductsResponse> getProducts(
      {required CatalogProductsRequest request}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CatalogProductsResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/catalog/products',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CatalogProductsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SortTypesResponse> getSortTypes(
      {required SortTypesRequest request}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<SortTypesResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/catalog/sort_types/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SortTypesResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FiltersResponse> getFilters({required FiltersRequest request}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<FiltersResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/catalog/filters/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FiltersResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AutocompleteResponse> getCatalogAutocomplete(
      {required AutocompleteRequest request}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AutocompleteResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/catalog/autocomplete/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AutocompleteResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
