import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/pages/widgets/background.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(color1: AppColors.green, color2: AppColors.yellow),
    );
  }
}
