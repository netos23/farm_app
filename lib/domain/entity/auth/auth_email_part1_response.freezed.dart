// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_email_part1_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthEmailPart1Response _$AuthEmailPart1ResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthEmailPart1Response.fromJson(json);
}

/// @nodoc
mixin _$AuthEmailPart1Response {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEmailPart1ResponseCopyWith<AuthEmailPart1Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEmailPart1ResponseCopyWith<$Res> {
  factory $AuthEmailPart1ResponseCopyWith(AuthEmailPart1Response value,
          $Res Function(AuthEmailPart1Response) then) =
      _$AuthEmailPart1ResponseCopyWithImpl<$Res, AuthEmailPart1Response>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AuthEmailPart1ResponseCopyWithImpl<$Res,
        $Val extends AuthEmailPart1Response>
    implements $AuthEmailPart1ResponseCopyWith<$Res> {
  _$AuthEmailPart1ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthEmailPart1ResponseCopyWith<$Res>
    implements $AuthEmailPart1ResponseCopyWith<$Res> {
  factory _$$_AuthEmailPart1ResponseCopyWith(_$_AuthEmailPart1Response value,
          $Res Function(_$_AuthEmailPart1Response) then) =
      __$$_AuthEmailPart1ResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_AuthEmailPart1ResponseCopyWithImpl<$Res>
    extends _$AuthEmailPart1ResponseCopyWithImpl<$Res,
        _$_AuthEmailPart1Response>
    implements _$$_AuthEmailPart1ResponseCopyWith<$Res> {
  __$$_AuthEmailPart1ResponseCopyWithImpl(_$_AuthEmailPart1Response _value,
      $Res Function(_$_AuthEmailPart1Response) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_AuthEmailPart1Response(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthEmailPart1Response implements _AuthEmailPart1Response {
  const _$_AuthEmailPart1Response({required this.name});

  factory _$_AuthEmailPart1Response.fromJson(Map<String, dynamic> json) =>
      _$$_AuthEmailPart1ResponseFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AuthEmailPart1Response(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEmailPart1Response &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEmailPart1ResponseCopyWith<_$_AuthEmailPart1Response> get copyWith =>
      __$$_AuthEmailPart1ResponseCopyWithImpl<_$_AuthEmailPart1Response>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthEmailPart1ResponseToJson(
      this,
    );
  }
}

abstract class _AuthEmailPart1Response implements AuthEmailPart1Response {
  const factory _AuthEmailPart1Response({required final String name}) =
      _$_AuthEmailPart1Response;

  factory _AuthEmailPart1Response.fromJson(Map<String, dynamic> json) =
      _$_AuthEmailPart1Response.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AuthEmailPart1ResponseCopyWith<_$_AuthEmailPart1Response> get copyWith =>
      throw _privateConstructorUsedError;
}
