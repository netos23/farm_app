import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory Profile({
    required String email,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'second_name') String? secondName,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'phone') String? phone,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
