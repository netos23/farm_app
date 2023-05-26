import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_products_response.freezed.dart';
part 'catalog_products_response.g.dart';

@freezed
class CatalogProductsResponse with _$CatalogProductsResponse {
    @JsonSerializable(
        explicitToJson: true,
        includeIfNull: false,
    )
    factory CatalogProductsResponse({
        required String name,

    }) = _CatalogProductsResponse;

    factory CatalogProductsResponse.fromJson(Map<String, dynamic> json) => _$CatalogProductsResponseFromJson(json);
}