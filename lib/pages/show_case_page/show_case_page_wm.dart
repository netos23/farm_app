import 'package:elementary/elementary.dart';
import 'package:farm_app/data/service/banner_service.dart';
import 'package:farm_app/domain/models/banner.dart';
import 'package:farm_app/internal/app_components.dart';
import 'package:farm_app/util/snack_bar_util.dart';
import 'package:flutter/material.dart';
import 'show_case_page_model.dart';
import 'show_case_page_widget.dart';

abstract class IShowCasePageWidgetModel extends IWidgetModel {
  EntityStateNotifier<List<ShowCaseBanner>> get bannersState;
}

ShowCasePageWidgetModel defaultShowCasePageWidgetModelFactory(
    BuildContext context) {
  return ShowCasePageWidgetModel(
    model: ShowCasePageModel(),
    bannerService: AppComponents().bannerService,
  );
}

// TODO: cover with documentation
/// Default widget model for ShowCasePageWidget
class ShowCasePageWidgetModel
    extends WidgetModel<ShowCasePageWidget, ShowCasePageModel>
    implements IShowCasePageWidgetModel {
  ShowCasePageWidgetModel({
    required ShowCasePageModel model,
    required this.bannerService,
  }) : super(model);

  @override
  final bannersState = EntityStateNotifier();
  final BannerService bannerService;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    loadBanners();
  }

  Future<void> loadBanners() async {
    try {
      bannersState.loading();
      final banners = await bannerService.getBanners();
      bannersState.content(banners);
    } catch (e) {
      context.showSnackBar(
        'Не удалось получить информацию о баннерах',
      );
    }
  }

  @override
  void dispose() {
    bannersState.dispose();
    super.dispose();
  }
}
