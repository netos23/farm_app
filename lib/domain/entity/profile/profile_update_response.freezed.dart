// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileUpdateResponse _$ProfileUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return _ProfileUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileUpdateResponse {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileUpdateResponseCopyWith<ProfileUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUpdateResponseCopyWith<$Res> {
  factory $ProfileUpdateResponseCopyWith(ProfileUpdateResponse value,
          $Res Function(ProfileUpdateResponse) then) =
      _$ProfileUpdateResponseCopyWithImpl<$Res, ProfileUpdateResponse>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ProfileUpdateResponseCopyWithImpl<$Res,
        $Val extends ProfileUpdateResponse>
    implements $ProfileUpdateResponseCopyWith<$Res> {
  _$ProfileUpdateResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProfileUpdateResponseCopyWith<$Res>
    implements $ProfileUpdateResponseCopyWith<$Res> {
  factory _$$_ProfileUpdateResponseCopyWith(_$_ProfileUpdateResponse value,
          $Res Function(_$_ProfileUpdateResponse) then) =
      __$$_ProfileUpdateResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ProfileUpdateResponseCopyWithImpl<$Res>
    extends _$ProfileUpdateResponseCopyWithImpl<$Res, _$_ProfileUpdateResponse>
    implements _$$_ProfileUpdateResponseCopyWith<$Res> {
  __$$_ProfileUpdateResponseCopyWithImpl(_$_ProfileUpdateResponse _value,
      $Res Function(_$_ProfileUpdateResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ProfileUpdateResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileUpdateResponse implements _ProfileUpdateResponse {
  const _$_ProfileUpdateResponse({required this.name});

  factory _$_ProfileUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileUpdateResponseFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileUpdateResponse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileUpdateResponse &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileUpdateResponseCopyWith<_$_ProfileUpdateResponse> get copyWith =>
      __$$_ProfileUpdateResponseCopyWithImpl<_$_ProfileUpdateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileUpdateResponseToJson(
      this,
    );
  }
}

abstract class _ProfileUpdateResponse implements ProfileUpdateResponse {
  const factory _ProfileUpdateResponse({required final String name}) =
      _$_ProfileUpdateResponse;

  factory _ProfileUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileUpdateResponse.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileUpdateResponseCopyWith<_$_ProfileUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
