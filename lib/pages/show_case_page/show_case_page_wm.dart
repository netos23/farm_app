import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/data/service/banner_service.dart';
import 'package:farm_app/domain/models/banner.dart';
import 'package:farm_app/internal/app_components.dart';
import 'package:farm_app/router/app_router.dart';
import 'package:farm_app/util/snack_bar_util.dart';
import 'package:flutter/material.dart';
import 'show_case_page_model.dart';
import 'show_case_page_widget.dart';

abstract class IShowCasePageWidgetModel extends IWidgetModel {
  EntityStateNotifier<List<ShowCaseBanner>> get bannersState;

  void openLink(String value);
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
    bannersState.content([
      const TitleBanner(text: 'Заголовок'),
      const ImageBanner(
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=b5a84a7d7bfdb735142cd5daa2b6d4373ff65198-8181332-images-thumbs&n=13',
      ),
      const ButtonBanner(
        text: 'смотреть каталог',
        link: 'https://t.ru/${AuthRoute.name}'
      ),
      const SliderBanner(
        images: [
          SliderItem(
            imageUrl:
                'https://avatars.mds.yandex.net/i?id=9cb8a7c8ad034c1a7590ae5a3612dd2e74f40cee-9245043-images-thumbs&n=13',
          ),
          SliderItem(
            imageUrl:
                'https://avatars.mds.yandex.net/i?id=48f992b69891b5b82bed54dc19e75ab4d732cf09-9149104-images-thumbs&n=13',
          ),
          SliderItem(
            imageUrl:
                'https://avatars.mds.yandex.net/i?id=979e0da173fdf1443287f7c4c709c00c5b56a80e-6332308-images-thumbs&n=13',
          ),
          SliderItem(
            imageUrl:
                'https://avatars.mds.yandex.net/i?id=90b7c2b368c2ea05ef31d60feaaa926b0ea14dcf-5253921-images-thumbs&n=13',
          ),
        ],
      ),
      const MarkdownBanner(text: '''
# h1 Heading 8-)
## h2 Heading
### h3 Heading
#### h4 Heading
##### h5 Heading
###### h6 Heading


| Option | Description |
| ------ | ----------- |
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default. |
| ext    | extension to be used for dest files. |

## Links

[link text](http://dev.nodeca.com)

[link with title](http://nodeca.github.io/pica/demo/ "title text!")

Autoconverted link https://github.com/nodeca/pica (enable linkify to see)


## Images

![Minion](https://avatars.mds.yandex.net/i?id=98a004224f6cdc1e8503faaa3b93c8ad6bd594b1-7661913-images-thumbs&n=13)
'''),
    ]);
    // loadBanners();
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

  @override
  void openLink(String value) {
    final uri = Uri.parse(value);

    context.router.root.pushNamed(
      uri.path,
    );
  }
}
