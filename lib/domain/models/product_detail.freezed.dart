// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) {
  return _ProductDetail.fromJson(json);
}

/// @nodoc
mixin _$ProductDetail {
  String get name => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Badge> get badges => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;
  String? get cityFias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailCopyWith<ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailCopyWith<$Res> {
  factory $ProductDetailCopyWith(
          ProductDetail value, $Res Function(ProductDetail) then) =
      _$ProductDetailCopyWithImpl<$Res, ProductDetail>;
  @useResult
  $Res call(
      {String name,
      String picture,
      String description,
      List<Badge> badges,
      bool available,
      String? cityFias});
}

/// @nodoc
class _$ProductDetailCopyWithImpl<$Res, $Val extends ProductDetail>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? picture = null,
    Object? description = null,
    Object? badges = null,
    Object? available = null,
    Object? cityFias = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailCopyWith<$Res>
    implements $ProductDetailCopyWith<$Res> {
  factory _$$_ProductDetailCopyWith(
          _$_ProductDetail value, $Res Function(_$_ProductDetail) then) =
      __$$_ProductDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String picture,
      String description,
      List<Badge> badges,
      bool available,
      String? cityFias});
}

/// @nodoc
class __$$_ProductDetailCopyWithImpl<$Res>
    extends _$ProductDetailCopyWithImpl<$Res, _$_ProductDetail>
    implements _$$_ProductDetailCopyWith<$Res> {
  __$$_ProductDetailCopyWithImpl(
      _$_ProductDetail _value, $Res Function(_$_ProductDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? picture = null,
    Object? description = null,
    Object? badges = null,
    Object? available = null,
    Object? cityFias = freezed,
  }) {
    return _then(_$_ProductDetail(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetail implements _ProductDetail {
  const _$_ProductDetail(
      {required this.name,
      required this.picture,
      required this.description,
      required final List<Badge> badges,
      required this.available,
      this.cityFias})
      : _badges = badges;

  factory _$_ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailFromJson(json);

  @override
  final String name;
  @override
  final String picture;
  @override
  final String description;
  final List<Badge> _badges;
  @override
  List<Badge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final bool available;
  @override
  final String? cityFias;

  @override
  String toString() {
    return 'ProductDetail(name: $name, picture: $picture, description: $description, badges: $badges, available: $available, cityFias: $cityFias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetail &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, picture, description,
      const DeepCollectionEquality().hash(_badges), available, cityFias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailCopyWith<_$_ProductDetail> get copyWith =>
      __$$_ProductDetailCopyWithImpl<_$_ProductDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailToJson(
      this,
    );
  }
}

abstract class _ProductDetail implements ProductDetail {
  const factory _ProductDetail(
      {required final String name,
      required final String picture,
      required final String description,
      required final List<Badge> badges,
      required final bool available,
      final String? cityFias}) = _$_ProductDetail;

  factory _ProductDetail.fromJson(Map<String, dynamic> json) =
      _$_ProductDetail.fromJson;

  @override
  String get name;
  @override
  String get picture;
  @override
  String get description;
  @override
  List<Badge> get badges;
  @override
  bool get available;
  @override
  String? get cityFias;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailCopyWith<_$_ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
