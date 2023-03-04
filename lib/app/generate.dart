import 'package:showan_coffee/app/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.auth:
      return CupertinoPageRoute(
        builder: (_) => const SizedBox(),
        settings: settings,
      );
    default:
      return MaterialPageRoute(builder: (_) {
        return const Scaffold(
          body: Center(
            child: Text('Page not found :('),
          ),
        );
      });
  }
}
