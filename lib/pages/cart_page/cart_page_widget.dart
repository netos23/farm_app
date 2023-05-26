import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/pages/components/loading_indicator.dart';
import 'package:farm_app/pages/components/product_card.dart';
import 'package:farm_app/pages/components/search_widget.dart';
import 'package:farm_app/router/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../generated/app_localizations.dart';
import 'cart_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CartPage module
@RoutePage()
class CartPageWidget extends ElementaryWidget<ICartPageWidgetModel> {
  const CartPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCartPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICartPageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: !kIsWeb,
        title: Text(wm.localizations.basket),
        centerTitle: true,
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.cartState,
        loadingBuilder: (_, __) {
          return const Center(
            child: LoadingIndicator(),
          );
        },
        builder: (context, data) {
          final localizations = AppLocalizations.of(context);
          final products = data?.products ?? [];

          final logIn = wm.cartUseCase.profileUseCase.repository.auth;
          var router = context.router;
          if (!logIn || products.isEmpty) {
            return Center(
              child: Column(
                children: [
                  Expanded(
                    flex: logIn ? 4 : 5,
                    child: Image.asset(
                      'assets/images/products.png',
                    ),
                  ),
                  Flexible(
                    child: Text(
                      logIn
                          ? localizations.emptyBasket
                          : 'Что бы заказать товар, '
                              'Вам необходимо авторизоваться',
                      textAlign: TextAlign.center,
                      style: wm.textTheme.bodyLarge?.copyWith(
                        color: wm.colorScheme.onBackground,
                      ),
                    ),
                  ),
                  if (!logIn)
                    Expanded(
                      child: Center(
                        child: FilledButton(
                          onPressed: () async {
                            await router.pop();
                            await router.navigate(AuthRoute());
                          },
                          child: Text(
                            localizations.login,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            );
          }

          return GridView.builder(
            itemCount: products.length,
            gridDelegate: kIsWeb
                ? const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 12.5 / 18,
                  )
                : const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 11.5 / 18,
                  ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return ProductCard(
                product: products[index].product,
                onTap: () => wm.openProduct(
                  product: products[index].product,
                ),
              );
            },
          );
        },
      ),
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
