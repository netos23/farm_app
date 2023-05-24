import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'register_page_model.dart';
import 'register_page_widget.dart';

abstract class IRegisterPageWidgetModel extends IWidgetModel {
}

RegisterPageWidgetModel defaultRegisterPageWidgetModelFactory(BuildContext context) {
  return RegisterPageWidgetModel(RegisterPageModel());
}

// TODO: cover with documentation
/// Default widget model for RegisterPageWidget
class RegisterPageWidgetModel extends WidgetModel<RegisterPageWidget, RegisterPageModel>
    implements IRegisterPageWidgetModel {

  RegisterPageWidgetModel(RegisterPageModel model) : super(model);
}
