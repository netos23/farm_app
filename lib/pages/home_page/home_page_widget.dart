import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/generated/app_localizations.dart';
import 'package:farm_app/router/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home_page_wm.dart';

// TODO: cover with documentation
/// Main widget for HomePage module
@RoutePage()
class HomePageWidget extends ElementaryWidget<IHomePageWidgetModel> {
  const HomePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultHomePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IHomePageWidgetModel wm) {
    return kIsWeb ? const _WebPage() : const _MobilePage();
  }
}

class _MobilePage extends StatelessWidget {
  const _MobilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return AutoTabsScaffold(
      routes: const [
        ShowCaseTab(),
        CatalogTab(),
        BasketTab(),
        UserProfileTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: [
            NavigationDestination(
              label: localizations.blog,
              icon: const Icon(
                Icons.home_outlined,
              ),
            ),
            NavigationDestination(
              label: localizations.catalog,
              icon: const Icon(Icons.apps_rounded),
            ),
            NavigationDestination(
              label: localizations.basket,
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
            NavigationDestination(
              label: localizations.profile,
              icon: const Icon(Icons.person_outline),
            ),
          ],
        );
      },
    );
  }
}

class _WebPage extends StatelessWidget {
  const _WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return AutoRouter(
      builder: (context, child) {
        const tabs = [
          ShowCaseTab(),
          CatalogTab(),
          BasketTab(),
          UserProfileTab(),
        ];

        // we check for active route index by using
        // router.isRouteActive method
        var activeIndex = tabs.indexWhere(
          (d) => context.router.isRouteActive(d.routeName),
        );
        // there might be no active route until router is mounted
        // so we play safe
        if (activeIndex == -1) {
          activeIndex = 0;
        }
        return LayoutBuilder(
          builder: (context, constrains) {
            BoxConstraints bounds;

            final width = constrains.maxWidth;
            if (width <= 700) {
              bounds = constrains;
            } else {
              bounds = constrains.copyWith(
                minWidth: 0,
                maxWidth: max(width * 0.7, 700),
              );
            }

            return ColoredBox(
              color: Theme.of(context).colorScheme.background,
              child: Center(
                child: ConstrainedBox(
                  constraints: bounds,
                  child: Row(
                    children: [
                      NavigationRail(
                        labelType: NavigationRailLabelType.selected,
                        destinations: [
                          NavigationRailDestination(
                            label: Text(localizations.blog),
                            icon: const Icon(
                              Icons.home_outlined,
                            ),
                          ),
                          NavigationRailDestination(
                            label: Text(localizations.catalog),
                            icon: const Icon(Icons.apps_rounded),
                          ),
                          NavigationRailDestination(
                            label: Text(localizations.basket),
                            icon: const Icon(Icons.shopping_cart_outlined),
                          ),
                          NavigationRailDestination(
                            label: Text(localizations.profile),
                            icon: const Icon(Icons.person_outline),
                          ),
                        ],
                        selectedIndex: activeIndex,
                        onDestinationSelected: (index) {
                          // use navigate instead of push so you won't have
                          // many useless route stacks
                          context.navigateTo(tabs[index]);
                        },
                      ),
                      // child is the rendered route stack
                      Expanded(child: child)
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
