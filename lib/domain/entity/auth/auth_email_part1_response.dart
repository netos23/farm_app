
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_email_part1_response.g.dart';
part 'auth_email_part1_response.freezed.dart';

@freezed
class AuthEmailPart1Response with _$AuthEmailPart1Response{
  const factory AuthEmailPart1Response({
    required String name,
  }) = _AuthEmailPart1Response;

  factory AuthEmailPart1Response.fromJson(Map<String, dynamic> json) =>
      _$AuthEmailPart1ResponseFromJson(json);
}