import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/domain/models/profile.dart';
import 'package:farm_app/pages/components/theme_switch.dart';
import 'package:farm_app/router/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'profile_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfilePage module
@RoutePage()
class ProfilePageWidget extends ElementaryWidget<IProfilePageWidgetModel> {
  const ProfilePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfilePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfilePageWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    final textTheme = wm.textTheme;
    final colorTheme = wm.colorScheme;

    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(localizations.profile),
            centerTitle: true,
            actions: const [
              ThemeSwitch(),
            ],
          ),
          body: StreamBuilder<Profile?>(
            initialData: wm.profileUseCase.profile.valueOrNull,
            stream: wm.profileUseCase.profile.stream,
            builder: (context, profileSnapshot) {
              final isLogin = profileSnapshot.hasData &&
                  profileSnapshot.data!.email.isNotEmpty;
              final profile = profileSnapshot.data;

              final userImage = getUserImage(gender: profile?.gender);
              return Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: ProfileGrid(
                      profileCards: [
                        ProfileCard(
                          title: wm.localizations.myDetails,
                          image: userImage,
                          onTap: wm.onEditProfileTap,
                        ),
                        ProfileCard(
                          title: wm.localizations.basket,
                          image: 'assets/images/basket_t.png',
                          onTap: () {},
                        ),
                        ProfileCard(
                          title: wm.localizations.showCase,
                          image: 'assets/images/farmer.png',
                          onTap: wm.onFarmShowCaseTap,
                        ),
                        ProfileCard(
                          title: 'Calendar',
                          image: 'assets/images/calendar.png',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Visibility(
                      visible: !isLogin,
                      child: Text(
                        localizations.authRequired,
                        textAlign: TextAlign.center,
                        style: textTheme.bodyLarge?.copyWith(
                          color: colorTheme.onBackground,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        height: 50,
                        child: FilledButton(
                          style: theme.filledButtonTheme.style?.copyWith(
                            fixedSize: const MaterialStatePropertyAll(
                              Size.fromHeight(50),
                            ),
                          ),
                          onPressed: () {
                            if (!isLogin) {
                              context.router.push(AuthRoute());
                            } else {
                              wm.profileUseCase.logout();
                            }
                          },
                          child: Center(
                            child: !isLogin
                                ? Text(localizations.login)
                                : Text(localizations.exit),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  String getUserImage({String? gender}) {
    if (gender == 'unknown' || gender == 'male') {
      return 'assets/images/man.png';
    } else {
      return 'assets/images/girl.png';
    }
  }
}

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({
    Key? key,
    required this.profileCards,
  }) : super(key: key);
  final List<ProfileCard> profileCards;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: profileCards.length,
      gridDelegate: kIsWeb
          ? const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
            )
          : const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
            ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        return profileCards[index];
      },
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String image;
  final String title;
  final void Function() onTap;

  const ProfileCard(
      {Key? key, required this.image, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Stack(children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 20, 32, 32),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 8,
            child: Text(
              title,
              maxLines: 3,
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(
                color: colorTheme.onBackground,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
