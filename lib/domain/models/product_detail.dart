
import 'package:farm_app/domain/models/badge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail.freezed.dart';
part 'product_detail.g.dart';

@freezed
class ProductDetail with _$ProductDetail{
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ProductDetail({
    required String name,
    required String picture,
    required String description,
    required List<Badge> badges,
    required bool available,
    @JsonKey(name: 'city_fias')String? cityFias,
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailFromJson(json);
}