import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
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
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: wm.emailController,
          ),
        ],
      ),
    );
  }
}
