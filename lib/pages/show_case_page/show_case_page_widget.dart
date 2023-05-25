import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/domain/models/banner.dart';
import 'package:farm_app/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'show_case_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ShowCasePage module
@RoutePage()
class ShowCasePageWidget extends ElementaryWidget<IShowCasePageWidgetModel> {
  const ShowCasePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultShowCasePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IShowCasePageWidgetModel wm) {
    return Scaffold(
      body: SafeArea(
        child: EntityStateNotifierBuilder(
          listenableEntityState: wm.bannersState,
          loadingBuilder: (context, data){
            return ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(),
                );
              },
            );
          },
          builder: (context, bannersData) {
            final localizations = AppLocalizations.of(context);
            final banners = bannersData ?? [];
            if (banners.isEmpty) {
              return const Center(
                child: Text('Can`t get banners'),
              );
            }

            return ListView.builder(
              itemCount: banners.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                  ),
                  child: banners[index].when(
                    imageBanner: (imageUrl, link) => _ImageBannerWidget(
                      image: imageUrl,
                      link: link,
                    ),
                    buttonBanner: (text, link) => _ButtonBannerWidget(
                      text: text,
                      link: link,
                      onPressed: wm.openLink,
                    ),
                    titleBanner: (text) => _TitleBannerWidget(
                      text: text,
                    ),
                    markdownBanner: (text) => _MarkdownBannerWidget(
                      text: text,
                    ),
                    sliderBanner: (items) => _SliderBannerWidget(
                      items: items,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _ImageBannerWidget extends StatelessWidget {
  const _ImageBannerWidget({
    Key? key,
    required this.image,
    this.link,
  }) : super(key: key);

  final String image;
  final String? link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(15),
        child: AspectRatio(
          aspectRatio: 1.0,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: image,
          ),
        ),
      ),
    );
  }
}

class _ButtonBannerWidget extends StatelessWidget {
  const _ButtonBannerWidget({
    Key? key,
    required this.text,
    this.link,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final String? link;
  final ValueChanged<String>? onPressed;

  @override
  Widget build(BuildContext context) {
    final link = this.link;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: FilledButton(
        onPressed: link != null ? () => onPressed?.call(link) : null,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}

class _TitleBannerWidget extends StatelessWidget {
  const _TitleBannerWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Text(
        text,
        style: theme.textTheme.headlineLarge?.copyWith(
          color: theme.colorScheme.onBackground,
        ),
      ),
    );
  }
}

class _MarkdownBannerWidget extends StatelessWidget {
  const _MarkdownBannerWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Markdown(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        styleSheet: MarkdownStyleSheet.fromTheme(
          Theme.of(context),
        ),
        styleSheetTheme: MarkdownStyleSheetBaseTheme.material,
        shrinkWrap: true,
        softLineBreak: true,
        selectable: true,
        physics: const NeverScrollableScrollPhysics(),
        data: text,
      ),
    );
  }
}

class _SliderBannerWidget extends StatefulWidget {
  const _SliderBannerWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<SliderItem> items;

  @override
  State<_SliderBannerWidget> createState() => _SliderBannerWidgetState();
}

class _SliderBannerWidgetState extends State<_SliderBannerWidget> {
  final PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: PageView.builder(
            controller: controller,
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              final item = widget.items[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: item.imageUrl,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SmoothPageIndicator(
          controller: controller, // PageController
          count: widget.items.length,
          effect: const WormEffect(
            dotWidth: 8,
            dotHeight: 8,
          ),
          // your preferred effect
          onDotClicked: (index) {
            controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.bounceIn,
            );
          },
        )
      ],
    );
  }
}
