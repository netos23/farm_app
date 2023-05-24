import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'profile_page_model.dart';
import 'profile_page_widget.dart';

abstract class IProfilePageWidgetModel extends IWidgetModel {
}

ProfilePageWidgetModel defaultProfilePageWidgetModelFactory(BuildContext context) {
  return ProfilePageWidgetModel(ProfilePageModel());
}

// TODO: cover with documentation
/// Default widget model for ProfilePageWidget
class ProfilePageWidgetModel extends WidgetModel<ProfilePageWidget, ProfilePageModel>
    implements IProfilePageWidgetModel {

  ProfilePageWidgetModel(ProfilePageModel model) : super(model);
}
