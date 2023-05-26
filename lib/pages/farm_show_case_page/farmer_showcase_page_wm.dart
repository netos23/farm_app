import 'package:elementary/elementary.dart';
import 'package:farm_app/data/repository/dadata_repository.dart';
import 'package:farm_app/domain/entity/cart/cart_product.dart';
import 'package:farm_app/domain/entity/dadata/geo_data.dart';
import 'package:farm_app/domain/models/product.dart';
import 'package:farm_app/internal/app_components.dart';
import 'package:farm_app/pages/farm_show_case_page/farmer_showcase_page_model.dart';
import 'package:farm_app/pages/farm_show_case_page/farmer_showcase_page_widget.dart';
import 'package:farm_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';

abstract class IFarmShowcasePageWidgetModel extends IWidgetModel
    implements IThemeProvider {

  EntityStateNotifier<GeoData> get geoState;

  GeolocationDadataRepository get geolocationDadataRepository;


  void openSort();

  void openProduct({required Product product, required String tag});
}

FarmShowcasePageWidgetModel defaultFarmShowcasePageWidgetModelFactory(BuildContext context) {
  return FarmShowcasePageWidgetModel(FarmShowcasePageModel());
}

class FarmShowcasePageWidgetModel extends WidgetModel<FarmShowcasePageWidget, FarmShowcasePageModel>
    with ThemeProvider
    implements IFarmShowcasePageWidgetModel {


  @override
  final geolocationDadataRepository = AppComponents().dadataRepository;

  FarmShowcasePageWidgetModel(FarmShowcasePageModel model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    getCity();
  }

  @override
  void dispose() {
    geoState.dispose();
    super.dispose();
  }

  @override
  void openSort() {}

  @override
  void openProduct({required Product product, required String tag}) {
  }

  Future<void> getCity() async {
    final geoData = await geolocationDadataRepository.getGeolocationByIp();
    geoState.content(geoData);
  }

  @override
  final geoState = EntityStateNotifier();
}
