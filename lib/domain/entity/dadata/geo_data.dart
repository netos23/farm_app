import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_data.freezed.dart';
part 'geo_data.g.dart';

@freezed
class GeoData with _$GeoData {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
    factory GeoData({
      final double lat,
      final double lon,
      final String cityFias,
      final String name,
      final String fullName,
}) = _GeoData;

    factory GeoData.fromJson(Map<String, dynamic> json) => _$GeoDataFromJson(json);
}