import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_products_request.freezed.dart';
part 'catalog_products_request.g.dart';

@freezed
class CatalogProductsRequest with _$CatalogProductsRequest {
    @JsonSerializable(
        explicitToJson: true,
        includeIfNull: false,
    )
    factory CatalogProductsRequest({
        String? name,
        String? sortBy,
        String? search,
        int? categoryId,
    }) = _CatalogProductsRequest;

    factory CatalogProductsRequest.fromJson(Map<String, dynamic> json) => _$CatalogProductsRequestFromJson(json);
}