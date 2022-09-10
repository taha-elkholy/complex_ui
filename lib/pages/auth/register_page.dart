 import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/core/widgets/app_text_form_field.dart';
import 'package:complex_ui/core/widgets/background.dart';
import 'package:flutter/material.dart';

import '../../core/router/routes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: const [
          Background(color1: AppColors.yellow, color2: AppColors.green),
          _Body(),
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
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.09,
          ),
          SizedBox(
            height: size.height * 0.35,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Text(
                  'Relajate y\ndisfruta',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Transform.translate(
                      offset: Offset(size.width * 0.35, 0),
                      child: Image.asset(
                        'assets/images/casual-life-3d-boy-sitting-with-laptop-and-cup-1 1.png',
                        width: size.width * 0.6,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(5, -10),
                      child: Image.asset(
                        'assets/images/casual-life-3d-side-view-of-dog-looking-up 1.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Transform.translate(
              offset: const Offset(0, -10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.09,
                    width: size.width * 0.8,
                    child: AppTextFormField(
                      hint: 'Ingrese su nomrbre',
                      controller: TextEditingController(),
                      inputType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.09,
                    width: size.width * 0.8,
                    child: AppTextFormField(
                      hint: 'Ingrese su correo electrónico',
                      controller: TextEditingController(),
                      inputType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.09,
                    width: size.width * 0.8,
                    child: AppTextFormField(
                      hint: 'Contraseña',
                      controller: TextEditingController(),
                      inputType: TextInputType.emailAddress,
                      isPassword: true,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.09,
                    width: size.width * 0.8,
                    child: AppTextFormField(
                      hint: 'Confirmar Contraseña',
                      controller: TextEditingController(),
                      inputType: TextInputType.emailAddress,
                      isPassword: true,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: size.width * 0.8,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context,
                          AppRoutes.homeLayoutPageRoute,
                          (route) => route.isFirst),
                      child: const Text('Registrarse'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
