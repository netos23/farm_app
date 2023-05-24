// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FiltersResponse _$FiltersResponseFromJson(Map<String, dynamic> json) {
  return _FiltersResponse.fromJson(json);
}

/// @nodoc
mixin _$FiltersResponse {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FiltersResponseCopyWith<FiltersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersResponseCopyWith<$Res> {
  factory $FiltersResponseCopyWith(
          FiltersResponse value, $Res Function(FiltersResponse) then) =
      _$FiltersResponseCopyWithImpl<$Res, FiltersResponse>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$FiltersResponseCopyWithImpl<$Res, $Val extends FiltersResponse>
    implements $FiltersResponseCopyWith<$Res> {
  _$FiltersResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_FiltersResponseCopyWith<$Res>
    implements $FiltersResponseCopyWith<$Res> {
  factory _$$_FiltersResponseCopyWith(
          _$_FiltersResponse value, $Res Function(_$_FiltersResponse) then) =
      __$$_FiltersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_FiltersResponseCopyWithImpl<$Res>
    extends _$FiltersResponseCopyWithImpl<$Res, _$_FiltersResponse>
    implements _$$_FiltersResponseCopyWith<$Res> {
  __$$_FiltersResponseCopyWithImpl(
      _$_FiltersResponse _value, $Res Function(_$_FiltersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_FiltersResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FiltersResponse implements _FiltersResponse {
  _$_FiltersResponse({required this.name});

  factory _$_FiltersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FiltersResponseFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'FiltersResponse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FiltersResponse &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FiltersResponseCopyWith<_$_FiltersResponse> get copyWith =>
      __$$_FiltersResponseCopyWithImpl<_$_FiltersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FiltersResponseToJson(
      this,
    );
  }
}

abstract class _FiltersResponse implements FiltersResponse {
  factory _FiltersResponse({required final String name}) = _$_FiltersResponse;

  factory _FiltersResponse.fromJson(Map<String, dynamic> json) =
      _$_FiltersResponse.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FiltersResponseCopyWith<_$_FiltersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
