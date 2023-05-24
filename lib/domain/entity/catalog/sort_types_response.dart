import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort_types_response.freezed.dart';
part 'sort_types_response.g.dart';

@freezed
class SortTypesResponse with _$SortTypesResponse {
    factory SortTypesResponse({
        required String name,
    }) = _SortTypesResponse;

    factory SortTypesResponse.fromJson(Map<String, dynamic> json) => _$SortTypesResponseFromJson(json);
}