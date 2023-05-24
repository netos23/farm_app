// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_delete_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDeleteRequest _$ProfileDeleteRequestFromJson(Map<String, dynamic> json) {
  return _ProfileDeleteRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfileDeleteRequest {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDeleteRequestCopyWith<ProfileDeleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDeleteRequestCopyWith<$Res> {
  factory $ProfileDeleteRequestCopyWith(ProfileDeleteRequest value,
          $Res Function(ProfileDeleteRequest) then) =
      _$ProfileDeleteRequestCopyWithImpl<$Res, ProfileDeleteRequest>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ProfileDeleteRequestCopyWithImpl<$Res,
        $Val extends ProfileDeleteRequest>
    implements $ProfileDeleteRequestCopyWith<$Res> {
  _$ProfileDeleteRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProfileDeleteRequestCopyWith<$Res>
    implements $ProfileDeleteRequestCopyWith<$Res> {
  factory _$$_ProfileDeleteRequestCopyWith(_$_ProfileDeleteRequest value,
          $Res Function(_$_ProfileDeleteRequest) then) =
      __$$_ProfileDeleteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ProfileDeleteRequestCopyWithImpl<$Res>
    extends _$ProfileDeleteRequestCopyWithImpl<$Res, _$_ProfileDeleteRequest>
    implements _$$_ProfileDeleteRequestCopyWith<$Res> {
  __$$_ProfileDeleteRequestCopyWithImpl(_$_ProfileDeleteRequest _value,
      $Res Function(_$_ProfileDeleteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ProfileDeleteRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileDeleteRequest implements _ProfileDeleteRequest {
  const _$_ProfileDeleteRequest({required this.name});

  factory _$_ProfileDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDeleteRequestFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileDeleteRequest(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileDeleteRequest &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileDeleteRequestCopyWith<_$_ProfileDeleteRequest> get copyWith =>
      __$$_ProfileDeleteRequestCopyWithImpl<_$_ProfileDeleteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDeleteRequestToJson(
      this,
    );
  }
}

abstract class _ProfileDeleteRequest implements ProfileDeleteRequest {
  const factory _ProfileDeleteRequest({required final String name}) =
      _$_ProfileDeleteRequest;

  factory _ProfileDeleteRequest.fromJson(Map<String, dynamic> json) =
      _$_ProfileDeleteRequest.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileDeleteRequestCopyWith<_$_ProfileDeleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
