import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';

part 'banner.g.dart';

@Freezed(
  fromJson: true,
  toJson: true,
  unionKey: "type",
)
sealed class Banner with _$Banner {

  const factory Banner.image({
    required String imageUrl,
    String? link,
  }) = Image;

  const factory Banner.button({
    required String text,
    String? link,
  }) = Button;

  const factory Banner.title({
    required String text,
  }) = Title;

  const factory Banner.markdown({
    required String text,
  }) = Markdown;

  const factory Banner.slider({
    required List<SliderItem> images,
  }) = Slider;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}



@freezed
class SliderItem with _$SliderItem {
    const factory SliderItem({
      required String imageUrl,
      String? link,
  }) = _SliderItem;

    factory SliderItem.fromJson(Map<String, dynamic> json)
    => _$SliderItemFromJson(json);
}
