import 'package:elementary/elementary.dart';
import 'package:farm_app/data/repository/auth_repository.dart';
import 'package:farm_app/domain/use_case/profile_use_case.dart';
import 'package:farm_app/generated/app_localizations.dart';
import 'package:farm_app/internal/app_components.dart';
import 'package:farm_app/router/app_router.dart';
import 'package:farm_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'profile_page_model.dart';
import 'profile_page_widget.dart';

abstract class IProfilePageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  AuthRepository get authRepository;

  ProfileUseCase get profileUseCase;

  void onFarmShowCaseTap();

  void onEditProfileTap();

  void onBasketTap();
}

ProfilePageWidgetModel defaultProfilePageWidgetModelFactory(
    BuildContext context) {
  return ProfilePageWidgetModel(ProfilePageModel());
}

// TODO: cover with documentation
/// Default widget model for ProfilePageWidget
class ProfilePageWidgetModel
    extends WidgetModel<ProfilePageWidget, ProfilePageModel>
    with ThemeProvider
    implements IProfilePageWidgetModel {
  ProfilePageWidgetModel(ProfilePageModel model) : super(model);
  @override
  final profileUseCase = AppComponents().profileUseCase;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    profileUseCase.loadProfile();
  }

  @override
  void dispose() {
    super.dispose();
    profileUseCase.dispose();
  }

  @override
  AuthRepository authRepository = AuthRepository(
    AppComponents().authService,
  );

  @override
  void onFarmShowCaseTap() {
    if (profileUseCase.profile.valueOrNull != null &&
        (profileUseCase.profile.value!.brand ?? '').isNotEmpty) {
      router.push(FarmShowcaseRoute());
    } else {
      showModalBottomSheet(
        context: router.root.navigatorKey.currentContext!,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
        ),
        builder: _buildContent,
      );
    }
  }

  Widget _buildContent(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Данный раздел доступен только пользователям, зарегистрированным в качестве фермера. Чтобы стать фермером - перейдите в раздел "Мои данные" и измените свой статус',
            maxLines: 6,
            style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurface,
                overflow: TextOverflow.ellipsis),
          ),
        ),
      ],
    );
  }

  @override
  void onEditProfileTap() {
    router.push(EditProfileRoute());
  }

  @override
  void onBasketTap() {
    router.navigate(const BasketTab());
  }
}
