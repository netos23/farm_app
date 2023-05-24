
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_delete_request.freezed.dart';
part 'profile_delete_request.g.dart';


@freezed
class ProfileDeleteRequest with _$ProfileDeleteRequest{
  const factory ProfileDeleteRequest({
    required String name,
  }) = _ProfileDeleteRequest;

  factory ProfileDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileDeleteRequestFromJson(json);
}
