import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'register_page_wm.dart';

// TODO: cover with documentation
/// Main widget for RegisterPage module
@RoutePage()
class RegisterPageWidget extends ElementaryWidget<IRegisterPageWidgetModel> {
  const RegisterPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultRegisterPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IRegisterPageWidgetModel wm) {
    return Container();
  }
}
