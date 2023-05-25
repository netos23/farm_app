
import 'package:farm_app/domain/models/badge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String name,
    required String picture,
    required String description,
    required List<Badge> badges,
    required bool available,
    String? cityFias,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}