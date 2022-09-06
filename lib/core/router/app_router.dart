import 'package:complex_ui/core/router/routes.dart';
import 'package:complex_ui/pages/auth/landing_page.dart';
import 'package:complex_ui/pages/auth/login_page.dart';
import 'package:complex_ui/pages/auth/register_page.dart';
import 'package:complex_ui/pages/auth/register_with_page.dart';
import 'package:complex_ui/pages/home_layout.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginPageRoute:
      return MaterialPageRoute(
        builder: (_) => const LoginPage(),
        settings: settings,
      );
    case AppRoutes.registerPageRoute:
      return MaterialPageRoute(
        builder: (_) => const RegisterPage(),
        settings: settings,
      );
    case AppRoutes.registerWithPageRoute:
      return MaterialPageRoute(
        builder: (_) => const RegisterWithPage(),
        settings: settings,
      );
    case AppRoutes.homeLayoutPageRoute:
      return MaterialPageRoute(
        builder: (_) => const HomeLayout(),
        settings: settings,
      );

    case AppRoutes.landingPageRoute:
    default:
      return MaterialPageRoute(
        builder: (_) => const LandingPage(),
        settings: settings,
      );
  }
}
