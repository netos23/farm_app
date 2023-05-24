
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_delete_response.freezed.dart';
part 'profile_delete_response.g.dart';

@freezed
class ProfileDeleteResponse with _$ProfileDeleteResponse{
  const factory ProfileDeleteResponse({
    required String name,
  }) = _ProfileDeleteResponse;

  factory ProfileDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileDeleteResponseFromJson(json);
}