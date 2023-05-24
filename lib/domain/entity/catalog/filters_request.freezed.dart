// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FiltersRequest _$FiltersRequestFromJson(Map<String, dynamic> json) {
  return _FiltersRequest.fromJson(json);
}

/// @nodoc
mixin _$FiltersRequest {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FiltersRequestCopyWith<FiltersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersRequestCopyWith<$Res> {
  factory $FiltersRequestCopyWith(
          FiltersRequest value, $Res Function(FiltersRequest) then) =
      _$FiltersRequestCopyWithImpl<$Res, FiltersRequest>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$FiltersRequestCopyWithImpl<$Res, $Val extends FiltersRequest>
    implements $FiltersRequestCopyWith<$Res> {
  _$FiltersRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_FiltersRequestCopyWith<$Res>
    implements $FiltersRequestCopyWith<$Res> {
  factory _$$_FiltersRequestCopyWith(
          _$_FiltersRequest value, $Res Function(_$_FiltersRequest) then) =
      __$$_FiltersRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_FiltersRequestCopyWithImpl<$Res>
    extends _$FiltersRequestCopyWithImpl<$Res, _$_FiltersRequest>
    implements _$$_FiltersRequestCopyWith<$Res> {
  __$$_FiltersRequestCopyWithImpl(
      _$_FiltersRequest _value, $Res Function(_$_FiltersRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_FiltersRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FiltersRequest implements _FiltersRequest {
  _$_FiltersRequest({required this.name});

  factory _$_FiltersRequest.fromJson(Map<String, dynamic> json) =>
      _$$_FiltersRequestFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'FiltersRequest(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FiltersRequest &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FiltersRequestCopyWith<_$_FiltersRequest> get copyWith =>
      __$$_FiltersRequestCopyWithImpl<_$_FiltersRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FiltersRequestToJson(
      this,
    );
  }
}

abstract class _FiltersRequest implements FiltersRequest {
  factory _FiltersRequest({required final String name}) = _$_FiltersRequest;

  factory _FiltersRequest.fromJson(Map<String, dynamic> json) =
      _$_FiltersRequest.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FiltersRequestCopyWith<_$_FiltersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
