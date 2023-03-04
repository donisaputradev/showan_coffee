import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:showan_coffee/app/config.dart';
import 'package:showan_coffee/app/generate.dart';
import 'package:showan_coffee/core/core.dart';
import 'package:showan_coffee/features/settings/settings.dart';
import 'package:showan_coffee/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor:
            AppConfig.transparentStatusBar ? Colors.transparent : null,
      ),
    );

    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetIt.I<ThemeBloc>()..add(const ThemeStarted()),
        ),
        BlocProvider(
          create: (context) =>
              GetIt.I<LanguageBloc>()..add(const LanguageStarted()),
        ),
      ],
      child: const _AppWidget(),
    );
  }
}

class _AppWidget extends StatelessWidget {
  const _AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageState = context.watch<LanguageBloc>().state;
    final themeState = context.watch<ThemeBloc>().state;

    return MaterialApp(
      title: AppConfig.appName,
      theme: themeState.theme.toThemeData(),
      locale: languageState.language != null
          ? Locale(languageState.language!.code)
          : null,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      navigatorObservers: [routeObserver],
      onGenerateRoute: onGenerateRoute,
      home: const SizedBox(),
    );
  }
}
