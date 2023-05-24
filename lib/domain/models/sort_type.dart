import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort_type.freezed.dart';
part 'sort_type.g.dart';

@freezed
class SortType with _$SortType {
    factory SortType({
      String? id,
      String? name
}) = _SortType;

    factory SortType.fromJson(Map<String, dynamic> json) => _$SortTypeFromJson(json);
}