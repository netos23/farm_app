import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters_request.freezed.dart';
part 'filters_request.g.dart';

@freezed
class FiltersRequest with _$FiltersRequest {
    factory FiltersRequest({
        required String name,
    }) = _FiltersRequest;

    factory FiltersRequest.fromJson(Map<String, dynamic> json) => _$FiltersRequestFromJson(json);
}