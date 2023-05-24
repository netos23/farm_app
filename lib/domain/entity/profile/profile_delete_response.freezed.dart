// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDeleteResponse _$ProfileDeleteResponseFromJson(
    Map<String, dynamic> json) {
  return _ProfileDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileDeleteResponse {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDeleteResponseCopyWith<ProfileDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDeleteResponseCopyWith<$Res> {
  factory $ProfileDeleteResponseCopyWith(ProfileDeleteResponse value,
          $Res Function(ProfileDeleteResponse) then) =
      _$ProfileDeleteResponseCopyWithImpl<$Res, ProfileDeleteResponse>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ProfileDeleteResponseCopyWithImpl<$Res,
        $Val extends ProfileDeleteResponse>
    implements $ProfileDeleteResponseCopyWith<$Res> {
  _$ProfileDeleteResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProfileDeleteResponseCopyWith<$Res>
    implements $ProfileDeleteResponseCopyWith<$Res> {
  factory _$$_ProfileDeleteResponseCopyWith(_$_ProfileDeleteResponse value,
          $Res Function(_$_ProfileDeleteResponse) then) =
      __$$_ProfileDeleteResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ProfileDeleteResponseCopyWithImpl<$Res>
    extends _$ProfileDeleteResponseCopyWithImpl<$Res, _$_ProfileDeleteResponse>
    implements _$$_ProfileDeleteResponseCopyWith<$Res> {
  __$$_ProfileDeleteResponseCopyWithImpl(_$_ProfileDeleteResponse _value,
      $Res Function(_$_ProfileDeleteResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ProfileDeleteResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileDeleteResponse implements _ProfileDeleteResponse {
  const _$_ProfileDeleteResponse({required this.name});

  factory _$_ProfileDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDeleteResponseFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileDeleteResponse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileDeleteResponse &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileDeleteResponseCopyWith<_$_ProfileDeleteResponse> get copyWith =>
      __$$_ProfileDeleteResponseCopyWithImpl<_$_ProfileDeleteResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDeleteResponseToJson(
      this,
    );
  }
}

abstract class _ProfileDeleteResponse implements ProfileDeleteResponse {
  const factory _ProfileDeleteResponse({required final String name}) =
      _$_ProfileDeleteResponse;

  factory _ProfileDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileDeleteResponse.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileDeleteResponseCopyWith<_$_ProfileDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
