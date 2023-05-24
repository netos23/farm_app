import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'auth_page_model.dart';
import 'auth_page_widget.dart';

abstract class IAuthPageWidgetModel extends IWidgetModel {
  TextEditingController get emailController;
}

AuthPageWidgetModel defaultAuthPageWidgetModelFactory(BuildContext context) {
  return AuthPageWidgetModel(AuthPageModel());
}

// TODO: cover with documentation
/// Default widget model for AuthPageWidget
class AuthPageWidgetModel extends WidgetModel<AuthPageWidget, AuthPageModel>
    implements IAuthPageWidgetModel {

  @override
  final emailController = TextEditingController();

  AuthPageWidgetModel(AuthPageModel model) : super(model);
}
