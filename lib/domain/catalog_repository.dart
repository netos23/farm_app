import 'package:dio/dio.dart';
import 'package:farm_app/domain/entity/catalog/autocomplete_request.dart';
import 'package:farm_app/domain/entity/catalog/autocomplete_response.dart';
import 'package:farm_app/domain/entity/catalog/catalog_categories_request.dart';
import 'package:farm_app/domain/entity/catalog/catalog_categories_response.dart';
import 'package:farm_app/domain/entity/catalog/catalog_products_request.dart';
import 'package:farm_app/domain/entity/catalog/catalog_products_response.dart';
import 'package:farm_app/domain/entity/catalog/filters_request.dart';
import 'package:farm_app/domain/entity/catalog/filters_response.dart';
import 'package:farm_app/domain/entity/catalog/product_detail_request.dart';
import 'package:farm_app/domain/entity/catalog/product_detail_response.dart';
import 'package:farm_app/domain/entity/catalog/sort_types_request.dart';
import 'package:farm_app/domain/entity/catalog/sort_types_response.dart';
import 'package:farm_app/domain/service/catalog_service.dart';

abstract class CatalogRepository {
  Future<CatalogCategoriesResponse> getCategories({
    required CatalogCategoriesRequest request,
  });

  Future<ProductDetailResponse> getProductDetail({
    required ProductDetailRequest request,
  });

  Future<CatalogProductsResponse> getProducts({
    required CatalogProductsRequest request,
  });

  Future<SortTypesResponse> getSortTypes({
    required SortTypesRequest request,
  });

  Future<FiltersResponse> getFilters({
    required FiltersRequest request,
  });

  Future<AutocompleteResponse> getCatalogAutocomplete({
    required AutocompleteRequest request,
  });
}

class CatalogRepositoryImpl implements CatalogRepository {
  CatalogRepositoryImpl(Dio dio) {
    _catalogService = CatalogService(
      dio,
    );
  }

  late CatalogService _catalogService;

  @override
  Future<AutocompleteResponse> getCatalogAutocomplete({
    required AutocompleteRequest request,
  }) async {
    try {
      final result = await _catalogService.getCatalogAutocomplete(
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
  Future<CatalogCategoriesResponse> getCategories({
    required CatalogCategoriesRequest request,
  }) async {
    try {
      final result = await _catalogService.getCategories(
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
  Future<FiltersResponse> getFilters({
    required FiltersRequest request,
  }) async {
    try {
      final result = await _catalogService.getFilters(
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
  Future<ProductDetailResponse> getProductDetail({
    required ProductDetailRequest request,
  }) async {
    try {
      final result = await _catalogService.getProductDetail(
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
  Future<CatalogProductsResponse> getProducts({
    required CatalogProductsRequest request,
  }) async {
    try {
      final result = await _catalogService.getProducts(
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
  Future<SortTypesResponse> getSortTypes({
    required SortTypesRequest request,
  }) async {
    try {
      final result = await _catalogService.getSortTypes(
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
