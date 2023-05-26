import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'auth_page_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthPage module
@RoutePage()
class AuthPageWidget extends ElementaryWidget<IAuthPageWidgetModel> {
  const AuthPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthPageWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    final textTheme = wm.textTheme;
    final colorTheme = wm.colorScheme;
    final router = wm.router;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          localizations.enter,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              textAlign: TextAlign.center,
              controller: wm.emailController,
            ),
            SizedBox(
              height: 50,
              child: FilledButton(
                style: theme.filledButtonTheme.style?.copyWith(
                    fixedSize: const MaterialStatePropertyAll(Size.fromHeight(50))
                ),
                onPressed: wm.onSendCode,
                child: Text(
                    localizations.getTheCode
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
