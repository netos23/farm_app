import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/pages/components/theme_switch.dart';
import 'package:farm_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'profile_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfilePage module
@RoutePage()
class ProfilePageWidget extends ElementaryWidget<IProfilePageWidgetModel> {
  const ProfilePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfilePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfilePageWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    final textTheme = wm.textTheme;
    final colorTheme = wm.colorScheme;
    final router = wm.router;

    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            actions: const [
              ThemeSwitch(),
            ],
          ),
          body: Column(

            children: [
              Expanded(
                flex: 4,
                child: Image.asset('assets/images/products.png'),
              ),
              Expanded(
                child: Text(
                  localizations.authRequired,
                  textAlign: TextAlign.center,
                  style: textTheme.bodyLarge?.copyWith(
                    color: colorTheme.onBackground,
                  ),
                ),
              ),
              Flexible(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 50,
                    child: FilledButton(
                      style: theme.filledButtonTheme.style?.copyWith(
                        fixedSize: const MaterialStatePropertyAll(Size.fromHeight(50))
                      ),
                      onPressed: () {
                        context.router.push(AuthRoute());
                      },
                      child: Center(
                        child: Text(
                          localizations.login
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
