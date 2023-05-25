import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/pages/auth_code_page/auth_code_page.dart';
import 'package:farm_app/pages/auth_page/auth_page.dart';
import 'package:farm_app/pages/catalog_page/catalog_page.dart';
import 'package:farm_app/pages/home_page/home_page.dart';
import 'package:farm_app/pages/profile_page/proffile_page.dart';
import 'package:farm_app/pages/register_page/register_page.dart';
import 'package:farm_app/pages/show_case_page/show_case_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "PageWidget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: AuthCodeRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: CatalogTab.page,
              children: [
                AutoRoute(
                  page: CatalogRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: FavoritesTab.page,
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: ShowCaseTab.page,
              children: [
                AutoRoute(
                  page: ShowCaseRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: BasketTab.page,
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: UserProfileTab.page,
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  initial: true,
                ),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'FavoritesTab')
class FavoritesTabPage extends AutoRouter {
  const FavoritesTabPage({super.key});
}

@RoutePage(name: 'ShowCaseTab')
class ShowCaseTabPage extends AutoRouter {
  const ShowCaseTabPage({super.key});
}

@RoutePage(name: 'BasketTab')
class BasketTabPage extends AutoRouter {
  const BasketTabPage({super.key});
}

@RoutePage(name: 'UserProfileTab')
class UserProfileTabPage extends AutoRouter {
  const UserProfileTabPage({super.key});
}
