
import 'package:freezed_annotation/freezed_annotation.dart';

part 'badge.freezed.dart';
part 'badge.g.dart';


@freezed
class Badge with _$Badge{
  const factory Badge({
    required int id,
    String? textColor,
    String? text,
    String? bgColor,
    String? picture,
  }) = _Badge;

  factory Badge.fromJson(Map<String, dynamic> json) =>
      _$BadgeFromJson(json);
}