import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters_response.freezed.dart';
part 'filters_response.g.dart';

@freezed
class FiltersResponse with _$FiltersResponse {
    factory FiltersResponse({
        required String name,
    }) = _FiltersResponse;

    factory FiltersResponse.fromJson(Map<String, dynamic> json) => _$FiltersResponseFromJson(json);
}