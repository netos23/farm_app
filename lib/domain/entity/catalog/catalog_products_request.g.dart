// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_products_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogProductsRequest _$$_CatalogProductsRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CatalogProductsRequest(
      name: json['name'] as String?,
      sortBy: json['sortBy'] as String?,
      search: json['search'] as String?,
      categoryId: json['categoryId'] as int?,
    );

Map<String, dynamic> _$$_CatalogProductsRequestToJson(
        _$_CatalogProductsRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sortBy': instance.sortBy,
      'search': instance.search,
      'categoryId': instance.categoryId,
    };
