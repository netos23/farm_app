import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
    factory Category({
      required int id,
      required String name,
      required String picture,
}) = _Category;

    factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}