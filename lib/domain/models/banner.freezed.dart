// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Banner _$BannerFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'image':
      return Image.fromJson(json);
    case 'button':
      return Button.fromJson(json);
    case 'title':
      return Title.fromJson(json);
    case 'markdown':
      return Markdown.fromJson(json);
    case 'slider':
      return Slider.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Banner', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Banner {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl, String? link) image,
    required TResult Function(String text, String? link) button,
    required TResult Function(String text) title,
    required TResult Function(String text) markdown,
    required TResult Function(List<SliderItem> images) slider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageUrl, String? link)? image,
    TResult? Function(String text, String? link)? button,
    TResult? Function(String text)? title,
    TResult? Function(String text)? markdown,
    TResult? Function(List<SliderItem> images)? slider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl, String? link)? image,
    TResult Function(String text, String? link)? button,
    TResult Function(String text)? title,
    TResult Function(String text)? markdown,
    TResult Function(List<SliderItem> images)? slider,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Image value) image,
    required TResult Function(Button value) button,
    required TResult Function(Title value) title,
    required TResult Function(Markdown value) markdown,
    required TResult Function(Slider value) slider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Image value)? image,
    TResult? Function(Button value)? button,
    TResult? Function(Title value)? title,
    TResult? Function(Markdown value)? markdown,
    TResult? Function(Slider value)? slider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Image value)? image,
    TResult Function(Button value)? button,
    TResult Function(Title value)? title,
    TResult Function(Markdown value)? markdown,
    TResult Function(Slider value)? slider,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCopyWith<$Res> {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) then) =
      _$BannerCopyWithImpl<$Res, Banner>;
}

/// @nodoc
class _$BannerCopyWithImpl<$Res, $Val extends Banner>
    implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageCopyWith<$Res> {
  factory _$$ImageCopyWith(_$Image value, $Res Function(_$Image) then) =
      __$$ImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl, String? link});
}

/// @nodoc
class __$$ImageCopyWithImpl<$Res> extends _$BannerCopyWithImpl<$Res, _$Image>
    implements _$$ImageCopyWith<$Res> {
  __$$ImageCopyWithImpl(_$Image _value, $Res Function(_$Image) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? link = freezed,
  }) {
    return _then(_$Image(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Image implements Image {
  const _$Image({required this.imageUrl, this.link, final String? $type})
      : $type = $type ?? 'image';

  factory _$Image.fromJson(Map<String, dynamic> json) => _$$ImageFromJson(json);

  @override
  final String imageUrl;
  @override
  final String? link;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Banner.image(imageUrl: $imageUrl, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Image &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageCopyWith<_$Image> get copyWith =>
      __$$ImageCopyWithImpl<_$Image>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl, String? link) image,
    required TResult Function(String text, String? link) button,
    required TResult Function(String text) title,
    required TResult Function(String text) markdown,
    required TResult Function(List<SliderItem> images) slider,
  }) {
    return image(imageUrl, link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageUrl, String? link)? image,
    TResult? Function(String text, String? link)? button,
    TResult? Function(String text)? title,
    TResult? Function(String text)? markdown,
    TResult? Function(List<SliderItem> images)? slider,
  }) {
    return image?.call(imageUrl, link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl, String? link)? image,
    TResult Function(String text, String? link)? button,
    TResult Function(String text)? title,
    TResult Function(String text)? markdown,
    TResult Function(List<SliderItem> images)? slider,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(imageUrl, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Image value) image,
    required TResult Function(Button value) button,
    required TResult Function(Title value) title,
    required TResult Function(Markdown value) markdown,
    required TResult Function(Slider value) slider,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Image value)? image,
    TResult? Function(Button value)? button,
    TResult? Function(Title value)? title,
    TResult? Function(Markdown value)? markdown,
    TResult? Function(Slider value)? slider,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Image value)? image,
    TResult Function(Button value)? button,
    TResult Function(Title value)? title,
    TResult Function(Markdown value)? markdown,
    TResult Function(Slider value)? slider,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageToJson(
      this,
    );
  }
}

abstract class Image implements Banner {
  const factory Image({required final String imageUrl, final String? link}) =
      _$Image;

  factory Image.fromJson(Map<String, dynamic> json) = _$Image.fromJson;

  String get imageUrl;
  String? get link;
  @JsonKey(ignore: true)
  _$$ImageCopyWith<_$Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonCopyWith<$Res> {
  factory _$$ButtonCopyWith(_$Button value, $Res Function(_$Button) then) =
      __$$ButtonCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String? link});
}

/// @nodoc
class __$$ButtonCopyWithImpl<$Res> extends _$BannerCopyWithImpl<$Res, _$Button>
    implements _$$ButtonCopyWith<$Res> {
  __$$ButtonCopyWithImpl(_$Button _value, $Res Function(_$Button) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? link = freezed,
  }) {
    return _then(_$Button(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Button implements Button {
  const _$Button({required this.text, this.link, final String? $type})
      : $type = $type ?? 'button';

  factory _$Button.fromJson(Map<String, dynamic> json) =>
      _$$ButtonFromJson(json);

  @override
  final String text;
  @override
  final String? link;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Banner.button(text: $text, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Button &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonCopyWith<_$Button> get copyWith =>
      __$$ButtonCopyWithImpl<_$Button>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl, String? link) image,
    required TResult Function(String text, String? link) button,
    required TResult Function(String text) title,
    required TResult Function(String text) markdown,
    required TResult Function(List<SliderItem> images) slider,
  }) {
    return button(text, link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageUrl, String? link)? image,
    TResult? Function(String text, String? link)? button,
    TResult? Function(String text)? title,
    TResult? Function(String text)? markdown,
    TResult? Function(List<SliderItem> images)? slider,
  }) {
    return button?.call(text, link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl, String? link)? image,
    TResult Function(String text, String? link)? button,
    TResult Function(String text)? title,
    TResult Function(String text)? markdown,
    TResult Function(List<SliderItem> images)? slider,
    required TResult orElse(),
  }) {
    if (button != null) {
      return button(text, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Image value) image,
    required TResult Function(Button value) button,
    required TResult Function(Title value) title,
    required TResult Function(Markdown value) markdown,
    required TResult Function(Slider value) slider,
  }) {
    return button(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Image value)? image,
    TResult? Function(Button value)? button,
    TResult? Function(Title value)? title,
    TResult? Function(Markdown value)? markdown,
    TResult? Function(Slider value)? slider,
  }) {
    return button?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Image value)? image,
    TResult Function(Button value)? button,
    TResult Function(Title value)? title,
    TResult Function(Markdown value)? markdown,
    TResult Function(Slider value)? slider,
    required TResult orElse(),
  }) {
    if (button != null) {
      return button(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonToJson(
      this,
    );
  }
}

abstract class Button implements Banner {
  const factory Button({required final String text, final String? link}) =
      _$Button;

  factory Button.fromJson(Map<String, dynamic> json) = _$Button.fromJson;

  String get text;
  String? get link;
  @JsonKey(ignore: true)
  _$$ButtonCopyWith<_$Button> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleCopyWith<$Res> {
  factory _$$TitleCopyWith(_$Title value, $Res Function(_$Title) then) =
      __$$TitleCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$TitleCopyWithImpl<$Res> extends _$BannerCopyWithImpl<$Res, _$Title>
    implements _$$TitleCopyWith<$Res> {
  __$$TitleCopyWithImpl(_$Title _value, $Res Function(_$Title) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$Title(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Title implements Title {
  const _$Title({required this.text, final String? $type})
      : $type = $type ?? 'title';

  factory _$Title.fromJson(Map<String, dynamic> json) => _$$TitleFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Banner.title(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Title &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleCopyWith<_$Title> get copyWith =>
      __$$TitleCopyWithImpl<_$Title>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl, String? link) image,
    required TResult Function(String text, String? link) button,
    required TResult Function(String text) title,
    required TResult Function(String text) markdown,
    required TResult Function(List<SliderItem> images) slider,
  }) {
    return title(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageUrl, String? link)? image,
    TResult? Function(String text, String? link)? button,
    TResult? Function(String text)? title,
    TResult? Function(String text)? markdown,
    TResult? Function(List<SliderItem> images)? slider,
  }) {
    return title?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl, String? link)? image,
    TResult Function(String text, String? link)? button,
    TResult Function(String text)? title,
    TResult Function(String text)? markdown,
    TResult Function(List<SliderItem> images)? slider,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Image value) image,
    required TResult Function(Button value) button,
    required TResult Function(Title value) title,
    required TResult Function(Markdown value) markdown,
    required TResult Function(Slider value) slider,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Image value)? image,
    TResult? Function(Button value)? button,
    TResult? Function(Title value)? title,
    TResult? Function(Markdown value)? markdown,
    TResult? Function(Slider value)? slider,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Image value)? image,
    TResult Function(Button value)? button,
    TResult Function(Title value)? title,
    TResult Function(Markdown value)? markdown,
    TResult Function(Slider value)? slider,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleToJson(
      this,
    );
  }
}

abstract class Title implements Banner {
  const factory Title({required final String text}) = _$Title;

  factory Title.fromJson(Map<String, dynamic> json) = _$Title.fromJson;

  String get text;
  @JsonKey(ignore: true)
  _$$TitleCopyWith<_$Title> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkdownCopyWith<$Res> {
  factory _$$MarkdownCopyWith(
          _$Markdown value, $Res Function(_$Markdown) then) =
      __$$MarkdownCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$MarkdownCopyWithImpl<$Res>
    extends _$BannerCopyWithImpl<$Res, _$Markdown>
    implements _$$MarkdownCopyWith<$Res> {
  __$$MarkdownCopyWithImpl(_$Markdown _value, $Res Function(_$Markdown) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$Markdown(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Markdown implements Markdown {
  const _$Markdown({required this.text, final String? $type})
      : $type = $type ?? 'markdown';

  factory _$Markdown.fromJson(Map<String, dynamic> json) =>
      _$$MarkdownFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Banner.markdown(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Markdown &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkdownCopyWith<_$Markdown> get copyWith =>
      __$$MarkdownCopyWithImpl<_$Markdown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl, String? link) image,
    required TResult Function(String text, String? link) button,
    required TResult Function(String text) title,
    required TResult Function(String text) markdown,
    required TResult Function(List<SliderItem> images) slider,
  }) {
    return markdown(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageUrl, String? link)? image,
    TResult? Function(String text, String? link)? button,
    TResult? Function(String text)? title,
    TResult? Function(String text)? markdown,
    TResult? Function(List<SliderItem> images)? slider,
  }) {
    return markdown?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl, String? link)? image,
    TResult Function(String text, String? link)? button,
    TResult Function(String text)? title,
    TResult Function(String text)? markdown,
    TResult Function(List<SliderItem> images)? slider,
    required TResult orElse(),
  }) {
    if (markdown != null) {
      return markdown(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Image value) image,
    required TResult Function(Button value) button,
    required TResult Function(Title value) title,
    required TResult Function(Markdown value) markdown,
    required TResult Function(Slider value) slider,
  }) {
    return markdown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Image value)? image,
    TResult? Function(Button value)? button,
    TResult? Function(Title value)? title,
    TResult? Function(Markdown value)? markdown,
    TResult? Function(Slider value)? slider,
  }) {
    return markdown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Image value)? image,
    TResult Function(Button value)? button,
    TResult Function(Title value)? title,
    TResult Function(Markdown value)? markdown,
    TResult Function(Slider value)? slider,
    required TResult orElse(),
  }) {
    if (markdown != null) {
      return markdown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkdownToJson(
      this,
    );
  }
}

abstract class Markdown implements Banner {
  const factory Markdown({required final String text}) = _$Markdown;

  factory Markdown.fromJson(Map<String, dynamic> json) = _$Markdown.fromJson;

  String get text;
  @JsonKey(ignore: true)
  _$$MarkdownCopyWith<_$Markdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SliderCopyWith<$Res> {
  factory _$$SliderCopyWith(_$Slider value, $Res Function(_$Slider) then) =
      __$$SliderCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SliderItem> images});
}

/// @nodoc
class __$$SliderCopyWithImpl<$Res> extends _$BannerCopyWithImpl<$Res, _$Slider>
    implements _$$SliderCopyWith<$Res> {
  __$$SliderCopyWithImpl(_$Slider _value, $Res Function(_$Slider) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$Slider(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SliderItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Slider implements Slider {
  const _$Slider({required final List<SliderItem> images, final String? $type})
      : _images = images,
        $type = $type ?? 'slider';

  factory _$Slider.fromJson(Map<String, dynamic> json) =>
      _$$SliderFromJson(json);

  final List<SliderItem> _images;
  @override
  List<SliderItem> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Banner.slider(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Slider &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderCopyWith<_$Slider> get copyWith =>
      __$$SliderCopyWithImpl<_$Slider>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl, String? link) image,
    required TResult Function(String text, String? link) button,
    required TResult Function(String text) title,
    required TResult Function(String text) markdown,
    required TResult Function(List<SliderItem> images) slider,
  }) {
    return slider(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageUrl, String? link)? image,
    TResult? Function(String text, String? link)? button,
    TResult? Function(String text)? title,
    TResult? Function(String text)? markdown,
    TResult? Function(List<SliderItem> images)? slider,
  }) {
    return slider?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl, String? link)? image,
    TResult Function(String text, String? link)? button,
    TResult Function(String text)? title,
    TResult Function(String text)? markdown,
    TResult Function(List<SliderItem> images)? slider,
    required TResult orElse(),
  }) {
    if (slider != null) {
      return slider(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Image value) image,
    required TResult Function(Button value) button,
    required TResult Function(Title value) title,
    required TResult Function(Markdown value) markdown,
    required TResult Function(Slider value) slider,
  }) {
    return slider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Image value)? image,
    TResult? Function(Button value)? button,
    TResult? Function(Title value)? title,
    TResult? Function(Markdown value)? markdown,
    TResult? Function(Slider value)? slider,
  }) {
    return slider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Image value)? image,
    TResult Function(Button value)? button,
    TResult Function(Title value)? title,
    TResult Function(Markdown value)? markdown,
    TResult Function(Slider value)? slider,
    required TResult orElse(),
  }) {
    if (slider != null) {
      return slider(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderToJson(
      this,
    );
  }
}

abstract class Slider implements Banner {
  const factory Slider({required final List<SliderItem> images}) = _$Slider;

  factory Slider.fromJson(Map<String, dynamic> json) = _$Slider.fromJson;

  List<SliderItem> get images;
  @JsonKey(ignore: true)
  _$$SliderCopyWith<_$Slider> get copyWith =>
      throw _privateConstructorUsedError;
}

SliderItem _$SliderItemFromJson(Map<String, dynamic> json) {
  return _SliderItem.fromJson(json);
}

/// @nodoc
mixin _$SliderItem {
  String get imageUrl => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderItemCopyWith<SliderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderItemCopyWith<$Res> {
  factory $SliderItemCopyWith(
          SliderItem value, $Res Function(SliderItem) then) =
      _$SliderItemCopyWithImpl<$Res, SliderItem>;
  @useResult
  $Res call({String imageUrl, String? link});
}

/// @nodoc
class _$SliderItemCopyWithImpl<$Res, $Val extends SliderItem>
    implements $SliderItemCopyWith<$Res> {
  _$SliderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SliderItemCopyWith<$Res>
    implements $SliderItemCopyWith<$Res> {
  factory _$$_SliderItemCopyWith(
          _$_SliderItem value, $Res Function(_$_SliderItem) then) =
      __$$_SliderItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String? link});
}

/// @nodoc
class __$$_SliderItemCopyWithImpl<$Res>
    extends _$SliderItemCopyWithImpl<$Res, _$_SliderItem>
    implements _$$_SliderItemCopyWith<$Res> {
  __$$_SliderItemCopyWithImpl(
      _$_SliderItem _value, $Res Function(_$_SliderItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? link = freezed,
  }) {
    return _then(_$_SliderItem(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SliderItem implements _SliderItem {
  const _$_SliderItem({required this.imageUrl, this.link});

  factory _$_SliderItem.fromJson(Map<String, dynamic> json) =>
      _$$_SliderItemFromJson(json);

  @override
  final String imageUrl;
  @override
  final String? link;

  @override
  String toString() {
    return 'SliderItem(imageUrl: $imageUrl, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SliderItem &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SliderItemCopyWith<_$_SliderItem> get copyWith =>
      __$$_SliderItemCopyWithImpl<_$_SliderItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SliderItemToJson(
      this,
    );
  }
}

abstract class _SliderItem implements SliderItem {
  const factory _SliderItem(
      {required final String imageUrl, final String? link}) = _$_SliderItem;

  factory _SliderItem.fromJson(Map<String, dynamic> json) =
      _$_SliderItem.fromJson;

  @override
  String get imageUrl;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_SliderItemCopyWith<_$_SliderItem> get copyWith =>
      throw _privateConstructorUsedError;
}
