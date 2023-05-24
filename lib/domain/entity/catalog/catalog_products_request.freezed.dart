// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_products_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogProductsRequest _$CatalogProductsRequestFromJson(
    Map<String, dynamic> json) {
  return _CatalogProductsRequest.fromJson(json);
}

/// @nodoc
mixin _$CatalogProductsRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogProductsRequestCopyWith<CatalogProductsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogProductsRequestCopyWith<$Res> {
  factory $CatalogProductsRequestCopyWith(CatalogProductsRequest value,
          $Res Function(CatalogProductsRequest) then) =
      _$CatalogProductsRequestCopyWithImpl<$Res, CatalogProductsRequest>;
  @useResult
  $Res call({String? name, String? sortBy, String? search, int? categoryId});
}

/// @nodoc
class _$CatalogProductsRequestCopyWithImpl<$Res,
        $Val extends CatalogProductsRequest>
    implements $CatalogProductsRequestCopyWith<$Res> {
  _$CatalogProductsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? sortBy = freezed,
    Object? search = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogProductsRequestCopyWith<$Res>
    implements $CatalogProductsRequestCopyWith<$Res> {
  factory _$$_CatalogProductsRequestCopyWith(_$_CatalogProductsRequest value,
          $Res Function(_$_CatalogProductsRequest) then) =
      __$$_CatalogProductsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? sortBy, String? search, int? categoryId});
}

/// @nodoc
class __$$_CatalogProductsRequestCopyWithImpl<$Res>
    extends _$CatalogProductsRequestCopyWithImpl<$Res,
        _$_CatalogProductsRequest>
    implements _$$_CatalogProductsRequestCopyWith<$Res> {
  __$$_CatalogProductsRequestCopyWithImpl(_$_CatalogProductsRequest _value,
      $Res Function(_$_CatalogProductsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? sortBy = freezed,
    Object? search = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_$_CatalogProductsRequest(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogProductsRequest implements _CatalogProductsRequest {
  _$_CatalogProductsRequest(
      {this.name, this.sortBy, this.search, this.categoryId});

  factory _$_CatalogProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogProductsRequestFromJson(json);

  @override
  final String? name;
  @override
  final String? sortBy;
  @override
  final String? search;
  @override
  final int? categoryId;

  @override
  String toString() {
    return 'CatalogProductsRequest(name: $name, sortBy: $sortBy, search: $search, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogProductsRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, sortBy, search, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogProductsRequestCopyWith<_$_CatalogProductsRequest> get copyWith =>
      __$$_CatalogProductsRequestCopyWithImpl<_$_CatalogProductsRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogProductsRequestToJson(
      this,
    );
  }
}

abstract class _CatalogProductsRequest implements CatalogProductsRequest {
  factory _CatalogProductsRequest(
      {final String? name,
      final String? sortBy,
      final String? search,
      final int? categoryId}) = _$_CatalogProductsRequest;

  factory _CatalogProductsRequest.fromJson(Map<String, dynamic> json) =
      _$_CatalogProductsRequest.fromJson;

  @override
  String? get name;
  @override
  String? get sortBy;
  @override
  String? get search;
  @override
  int? get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogProductsRequestCopyWith<_$_CatalogProductsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
