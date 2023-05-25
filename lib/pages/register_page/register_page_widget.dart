import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'register_page_wm.dart';

// TODO: cover with documentation
/// Main widget for RegisterPage module
@RoutePage()
class RegisterPageWidget extends ElementaryWidget<IRegisterPageWidgetModel> {
  const RegisterPageWidget({
    this.email,
    Key? key,
    WidgetModelFactory wmFactory = defaultRegisterPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final String? email;

  @override
  Widget build(IRegisterPageWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    final textTheme = wm.textTheme;
    final colorTheme = wm.colorScheme;
    final router = wm.router;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          localizations.registration,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              controller: wm.firstNameController,
            ),
            TextField(
              controller: wm.secondNameController,
            ),
            TextField(
              controller: wm.emailController,
            ),
            TextField(
              controller: wm.bitrhdayController,
            ),
            TextField(
              controller: wm.phoneNumber,
            ),
            SizedBox(
              height: 50,
              child: FilledButton(
                style: theme.filledButtonTheme.style?.copyWith(
                    fixedSize: const MaterialStatePropertyAll(Size.fromHeight(50))
                ),
                onPressed: wm.onRegister,
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
