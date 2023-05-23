import 'package:farm_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'color_schemes.g.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ValueNotifier<ThemeMode>>();

    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
      ),
      highContrastTheme: ThemeData(
        useMaterial3: true,
        colorScheme: hightColorScheme,
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
      ),
      highContrastDarkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: hightColorScheme,
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: hightColorScheme,
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
      ),
      themeMode: themeMode.value,
      routerConfig: _appRouter.config(),
    );
  }
}
