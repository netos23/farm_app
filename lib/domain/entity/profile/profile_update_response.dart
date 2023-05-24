
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_update_response.freezed.dart';
part 'profile_update_response.g.dart';

@freezed
class ProfileUpdateResponse with _$ProfileUpdateResponse{
  const factory ProfileUpdateResponse({
    required String name,
  }) = _ProfileUpdateResponse;

  factory ProfileUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateResponseFromJson(json);
}