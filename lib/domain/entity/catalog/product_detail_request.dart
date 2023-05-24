import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_request.freezed.dart';
part 'product_detail_request.g.dart';

@freezed
class ProductDetailRequest with _$ProductDetailRequest {
    factory ProductDetailRequest({
        required String name,
    }) = _ProductDetailRequest;

    factory ProductDetailRequest.fromJson(Map<String, dynamic> json) => _$ProductDetailRequestFromJson(json);
}