import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/data/repository/auth_repository.dart';
import 'package:farm_app/domain/entity/auth/auth_email_part1_request.dart';
import 'package:farm_app/domain/entity/auth/auth_email_part2_request.dart';
import 'package:farm_app/domain/models/profile.dart';
import 'package:farm_app/internal/app_components.dart';
import 'package:farm_app/router/app_router.dart';
import 'package:farm_app/util/snack_bar_util.dart';
import 'package:farm_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'register_page_model.dart';
import 'register_page_widget.dart';

abstract class IRegisterPageWidgetModel extends IWidgetModel implements IThemeProvider{
  AuthRepository get authRepository;

  TextEditingController get firstNameController;

  TextEditingController get secondNameController;

  TextEditingController get emailController;

  TextEditingController get bitrhdayController;

  TextEditingController get phoneNumber;

  onRegister();
}

RegisterPageWidgetModel defaultRegisterPageWidgetModelFactory(BuildContext context) {
  return RegisterPageWidgetModel(RegisterPageModel());
}

// TODO: cover with documentation
/// Default widget model for RegisterPageWidget
class RegisterPageWidgetModel extends WidgetModel<RegisterPageWidget, RegisterPageModel>
    with ThemeProvider
    implements IRegisterPageWidgetModel {
  

  RegisterPageWidgetModel(RegisterPageModel model) : super(model);
 
  @override
  AuthRepository authRepository = AuthRepository(AppComponents().authService);
  
  @override
  final bitrhdayController = TextEditingController();

  @override
  final emailController = TextEditingController();

  @override
  final firstNameController = TextEditingController();

  @override
  final phoneNumber = TextEditingController();

  @override
  final secondNameController = TextEditingController();


  @override
  void initWidgetModel() {
    emailController.text = widget.email ?? '';
    super.initWidgetModel();
  }

  @override
  Future<void> onRegister() async {

    final request = Profile(email: emailController.text, firstName: firstNameController.text, secondName: secondNameController.text, phone: phoneNumber.text,);

    try {
      await authRepository.register(profile: request);
      await authRepository.emailPart1(request: AuthEmailPart1Request(email: request.email, digits: 4));
      router.push(
        ProfileRoute(),
      );
    } on DioError catch (error) {
      if (error.response?.statusCode == 452){
        router.push(RegisterRoute(email: emailController.text));
        context.showSnackBar(localizations.userIsNotRegistered);
        return;
      }
      if (error.response?.statusCode == 403){
        router.push(RegisterRoute(email: ''));
        context.showSnackBar(localizations.userIsAlreadyExists);
        return;
      }
      throw Exception(
        error.response?.data['message'],
      );
    }
  }
}
