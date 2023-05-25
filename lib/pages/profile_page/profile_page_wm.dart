import 'package:elementary/elementary.dart';
import 'package:farm_app/data/repository/auth_repository.dart';
import 'package:farm_app/internal/app_components.dart';
import 'package:farm_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'profile_page_model.dart';
import 'profile_page_widget.dart';

abstract class IProfilePageWidgetModel extends IWidgetModel implements IThemeProvider {
  AuthRepository get authRepository;
}

ProfilePageWidgetModel defaultProfilePageWidgetModelFactory(BuildContext context) {
  return ProfilePageWidgetModel(ProfilePageModel());
}

// TODO: cover with documentation
/// Default widget model for ProfilePageWidget
class ProfilePageWidgetModel extends WidgetModel<ProfilePageWidget, ProfilePageModel>
    with ThemeProvider
    implements IProfilePageWidgetModel {

  ProfilePageWidgetModel(ProfilePageModel model) : super(model);


  @override
  void initWidgetModel() {
    authRepository.getUser();
    super.initWidgetModel();
  }

  @override
  AuthRepository authRepository = AuthRepository(
    AppComponents().authService,
  );
}
