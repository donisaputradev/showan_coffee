import 'package:showan_coffee/app/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:showan_coffee/features/auth/auth.dart';
import 'package:showan_coffee/features/home/home.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.auth:
      return MaterialPageRoute(
        builder: (_) => const AuthPage(),
        settings: settings,
      );
    case AppRoutes.login:
      return MaterialPageRoute(
        builder: (_) => const LoginPage(),
        settings: settings,
      );
    case AppRoutes.resgister:
      return MaterialPageRoute(
        builder: (_) => const RegisterPage(),
        settings: settings,
      );
    case AppRoutes.forgotByEmail:
      return MaterialPageRoute(
        builder: (_) => const ForgotByEmailPage(),
        settings: settings,
      );
    case AppRoutes.forgotByPhone:
      return MaterialPageRoute(
        builder: (_) => const ForgotByPhonePage(),
        settings: settings,
      );
    case AppRoutes.verification:
      final variable = settings.arguments as bool;
      return MaterialPageRoute(
        builder: (_) {
          return VerificationOTPPage(
            isPhone: variable,
          );
        },
        settings: settings,
      );
    case AppRoutes.newPassword:
      return MaterialPageRoute(
        builder: (_) {
          return const NewPasswordPage();
        },
        settings: settings,
      );
    case AppRoutes.home:
      return MaterialPageRoute(
        builder: (_) {
          return const MainPage();
        },
        settings: settings,
      );
    default:
      return CupertinoPageRoute(builder: (_) {
        return const Scaffold(
          body: Center(
            child: Text('Page not found :('),
          ),
        );
      });
  }
}
