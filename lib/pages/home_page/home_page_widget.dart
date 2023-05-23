import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
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
    return AutoTabsScaffold(
      routes: const [
        CatalogTab(),
        UserProfileTab(),
      ],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonBuilder: (_, tabsRouter) {
        return Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            onDestinationSelected: tabsRouter.setActiveIndex,
            destinations: const [
              NavigationDestination(
                label: 'Соревнования',
                icon: Icon(
                  Icons.emoji_events_outlined,
                ),
              ),
              NavigationDestination(
                label: 'Профиль',
                icon: Icon(Icons.person_outline),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _WebPage extends StatelessWidget {
  const _WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      builder: (context, child) {
        const tabs = [
          CatalogTab(),
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
        return Row(
          children: [
            NavigationRail(
              destinations: const [
                NavigationRailDestination(
                  label: Text('Соревнования'),
                  icon: Icon(
                    Icons.emoji_events_outlined,
                  ),
                ),
                NavigationRailDestination(
                  label: Text('Профиль'),
                  icon: Icon(Icons.person_outline),
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
        );
      },
    );
  }
}
