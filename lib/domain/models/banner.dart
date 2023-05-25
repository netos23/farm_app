import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';

part 'banner.g.dart';

@Freezed(
  fromJson: true,
  toJson: true,
  unionKey: "type",
)
sealed class ShowCaseBanner with _$ShowCaseBanner {

  const factory ShowCaseBanner.image({
    required String imageUrl,
    String? link,
  }) = Image;

  const factory ShowCaseBanner.button({
    required String text,
    String? link,
  }) = Button;

  const factory ShowCaseBanner.title({
    required String text,
  }) = Title;

  const factory ShowCaseBanner.markdown({
    required String text,
  }) = Markdown;

  const factory ShowCaseBanner.slider({
    required List<SliderItem> images,
  }) = Slider;

  factory ShowCaseBanner.fromJson(Map<String, dynamic> json) => _$ShowCaseBannerFromJson(json);
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
