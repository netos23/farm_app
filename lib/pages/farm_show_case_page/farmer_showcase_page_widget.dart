import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/generated/app_localizations.dart';
import 'package:farm_app/pages/components/loading_indicator.dart';
import 'package:farm_app/pages/components/product_card.dart';
import 'package:farm_app/pages/components/search_widget.dart';
import 'package:farm_app/pages/farm_show_case_page/farmer_showcase_page_wm.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// TODO: cover with documentation
/// Main widget for FarmShowCasePage module
@RoutePage()
class FarmShowcasePageWidget extends ElementaryWidget<IFarmShowcasePageWidgetModel> {
  const FarmShowcasePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultFarmShowcasePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IFarmShowcasePageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: kIsWeb,
        title: Text(wm.localizations.basket),
        centerTitle: true,
      ),
      // body: EntityStateNotifierBuilder(
      //   listenableEntityState: wm.FarmShowCaseState,
      //   loadingBuilder: (_, __) {
      //     return const Center(
      //       child: LoadingIndicator(),
      //     );
      //   },
      //   builder: (context, data) {
      //     final localizations = AppLocalizations.of(context);
      //     final products = data ?? [];
      //
      //     if (products.isEmpty) {
      //       return Center(
      //         child: Column(
      //           children: [
      //             Expanded(
      //               flex: 4,
      //               child: Image.asset(
      //                 'assets/images/products.png',
      //               ),
      //             ),
      //             Flexible(
      //               child: Text(
      //                 localizations.emptyBasket,
      //                 textAlign: TextAlign.center,
      //                 style: wm.textTheme.bodyLarge?.copyWith(
      //                   color: wm.colorScheme.onBackground,
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     }
      //
      //     return GridView.builder(
      //       itemCount: products.length,
      //       gridDelegate: kIsWeb
      //           ? const SliverGridDelegateWithMaxCrossAxisExtent(
      //               maxCrossAxisExtent: 300,
      //               mainAxisSpacing: 10,
      //               crossAxisSpacing: 10,
      //               childAspectRatio: 12.5 / 18,
      //             )
      //           : const SliverGridDelegateWithFixedCrossAxisCount(
      //               crossAxisCount: 2,
      //               mainAxisSpacing: 10,
      //               crossAxisSpacing: 10,
      //               childAspectRatio:  11.5 / 18,
      //             ),
      //       padding: const EdgeInsets.symmetric(horizontal: 16),
      //       itemBuilder: (context, index) {
      //
      //         return ProductCard(
      //           product: products[index].product,
      //           onTap: () => wm.openProduct(
      //              product: products[index].product,
      //             tag: ''
      //           ),
      //           tag: '',
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}

class SearchRow extends StatelessWidget implements PreferredSizeWidget {
  const SearchRow({
    Key? key,
    required this.controller,
    required this.height,
    required this.onSort,
    required this.active,
  }) : super(key: key);

  final TextEditingController controller;
  final double height;
  final VoidCallback? onSort;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height,
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: SearchWidget(
                controller: controller,
              ),
            ),
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(
                    child: IconButton(
                      icon: const Icon(
                        Icons.sort_rounded,
                      ),
                      onPressed: onSort,
                    ),
                  ),
                  if (active)
                    Positioned.fill(
                      top: 5,
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.fiber_manual_record,
                          size: 10,
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
