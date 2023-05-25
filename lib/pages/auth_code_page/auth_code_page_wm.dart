import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'auth_code_page_model.dart';
import 'auth_code_page_widget.dart';

abstract class IAuthCodePageWidgetModel extends IWidgetModel {
  TextEditingController get codeController;
}

AuthCodePageWidgetModel defaultAuthCodePageWidgetModelFactory(BuildContext context) {
  return AuthCodePageWidgetModel(AuthCodePageModel());
}

// TODO: cover with documentation
/// Default widget model for AuthCodePageWidget
class AuthCodePageWidgetModel extends WidgetModel<AuthCodePageWidget, AuthCodePageModel>
    implements IAuthCodePageWidgetModel {

  @override
  TextEditingController codeController = TextEditingController();

  AuthCodePageWidgetModel(AuthCodePageModel model) : super(model);

}
