import 'package:complex_ui/core/router/routes.dart';
import 'package:complex_ui/pages/login/login_page.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginPageRoute:
    default:
      return MaterialPageRoute(
        builder: (_) => const LoginPage(),
        settings: settings,
      );
  }
}
