import 'package:complex_ui/core/router/routes.dart';
import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/core/widgets/app_elevated_button_with_icon.dart';
import 'package:complex_ui/core/widgets/background.dart';
import 'package:flutter/material.dart';

class RegisterWithPage extends StatelessWidget {
  const RegisterWithPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Stack(
        children: const [
          Background(color1: AppColors.yellow, color2: AppColors.orange),
          _Body()
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [
        SizedBox(
          height: size.height * .1,
        ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            'Registrate de\nforma rápida y\nsencilla',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Image.asset(
          'assets/images/casual-life-3d-boy-and-girl-sitting-in-front-of-laptop 1.png',
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        AppElevatedButtonWithIcon(
          label: 'Registrarse',
          onPressed: () =>
              Navigator.pushNamed(context, AppRoutes.registerPageRoute),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        AppElevatedButtonWithIcon(
          onPressed: () {},
          label: 'Google',
          iconPath: 'assets/icons/flat-color-icons_google.svg',
          labelColor: AppColors.warmBlack,
          primaryColor: AppColors.googleBtn.withOpacity(0.8),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        AppElevatedButtonWithIcon(
          onPressed: () {},
          label: 'Facebook',
          iconPath: 'assets/icons/logos_facebook.svg',
          labelColor: Colors.black,
          primaryColor: AppColors.yellow.withOpacity(0.8),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        AppElevatedButtonWithIcon(
          onPressed: () {},
          label: 'Apple',
          iconPath: 'assets/icons/bi_apple.svg',
          primaryColor: AppColors.warmBlack.withOpacity(0.8),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
      ],
      ),
    );
  }
}
