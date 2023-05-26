import 'dart:async';

import 'package:dio/dio.dart';
import 'package:farm_app/domain/url/catalog_url.dart';
import 'package:farm_app/domain/entity/catalog/autocomplete_request.dart';
import 'package:farm_app/domain/entity/catalog/autocomplete_response.dart';
import 'package:farm_app/domain/entity/catalog/catalog_categories_request.dart';
import 'package:farm_app/domain/entity/catalog/catalog_categories_response.dart';
import 'package:farm_app/domain/entity/catalog/catalog_products_request.dart';
import 'package:farm_app/domain/entity/catalog/catalog_products_response.dart';
import 'package:farm_app/domain/entity/catalog/filters_request.dart';
import 'package:farm_app/domain/entity/catalog/product_detail_request.dart';
import 'package:farm_app/domain/entity/catalog/product_detail_response.dart';
import 'package:farm_app/domain/entity/catalog/sort_types_request.dart';
import 'package:farm_app/domain/entity/catalog/sort_types_response.dart';
import 'package:retrofit/http.dart';


part 'catalog_service.g.dart';

@RestApi()
abstract class CatalogService {
  factory CatalogService(Dio dio, {String baseUrl}) = _CatalogService;

  @GET(CatalogUrl.catalogCategories)
  Future<CatalogCategoriesResponse> getCategories({
    @Body() required CatalogCategoriesRequest request,
  });

  @POST(CatalogUrl.catalogProductDetail)
  Future<ProductDetailResponse> getProductDetail({
    @Body() required ProductDetailRequest request,
  });

  @POST(CatalogUrl.catalogProducts)
  Future<CatalogProductsResponse> getProducts({
    @Body() required CatalogProductsRequest request,
  });

  @GET(CatalogUrl.catalogSortTypes)
  Future<SortTypesResponse> getSortTypes({
    @Body() required SortTypesRequest request,
  });


  @POST(CatalogUrl.catalogAutocomplete)
  Future<AutocompleteResponse> getCatalogAutocomplete({
    @Body() required AutocompleteRequest request,
  });

}
