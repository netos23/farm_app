import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'auth_code_page_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthCodePage module
@RoutePage()
class AuthCodePageWidget extends ElementaryWidget<IAuthCodePageWidgetModel> {
  const AuthCodePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthCodePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthCodePageWidgetModel wm) {
    return Container();
  }
}
