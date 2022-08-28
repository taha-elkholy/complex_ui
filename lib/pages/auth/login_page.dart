import 'dart:ui';

import 'package:complex_ui/core/router/routes.dart';
import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/core/widgets/app_text_form_field.dart';
import 'package:complex_ui/pages/widgets/background.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/akar-icons_arrow-left.svg',
            width: 25,
            height: 25,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: const [
          Background(color1: AppColors.green, color2: AppColors.yellow),
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
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: size.height * .1,
          ),
          const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              '¡Hola de nuevo!\nTe esperábamos',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppColors.warmBlack,
              ),
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: size.height * 0.1,
                width: size.width * 0.8,
                child: AppTextFormField(
                  hint: 'Ingrese su correo electrónico',
                  controller: TextEditingController(),
                  inputType: TextInputType.emailAddress,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/casual-life-3d-young-woman-and-man-smiling-and-leaning-on-each-other 1.png',
                    width: size.width * .7,
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 0.8,
            child: AppTextFormField(
              hint: 'Contraseña',
              controller: TextEditingController(),
              inputType: TextInputType.emailAddress,
              isPassword: true,
            ),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          const Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              'Recuperar contraseña',
              style: TextStyle(fontSize: 15, color: AppColors.orange),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SizedBox(
            width: size.width * 0.8,
            height: size.height * 0.08,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: AppColors.orange.withOpacity(.9)),
              child: const Text(
                'Ingresar',
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Spacer(),
          RichText(
              text: TextSpan(children: [
            const TextSpan(
              text: 'Aún no tienes cuenta? ',
              style: TextStyle(fontSize: 15, color: AppColors.warmBlack),
            ),
            TextSpan(
              text: 'Registrate ahora',
              style: const TextStyle(fontSize: 15, color: AppColors.orange),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Navigator.popAndPushNamed(
                    context, AppRoutes.registerPageRoute),
            ),
          ]))
        ],
      ),
    );
  }
}
