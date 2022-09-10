import 'package:complex_ui/core/router/routes.dart';
import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/core/widgets/app_text_form_field.dart';
import 'package:complex_ui/core/widgets/background.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
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
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              '¡Hola de nuevo!\nTe esperábamos',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Transform.translate(
            offset: Offset(
              0,
              size.height * 0.02,
            ),
            child: Stack(
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
                      height: size.height * 0.07,
                    )
                  ],
                ),
              ],
            ),
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
            height: size.height * 0.002,
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              'Recuperar contraseña',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.orange),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SizedBox(
            width: size.width * 0.8,
            height: size.height * 0.08,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(context,
                  AppRoutes.homeLayoutPageRoute, (route) => route.isFirst),
              child: const Text(
                'Ingresar',
              ),
            ),
          ),
          const Spacer(),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: 'Aún no tienes cuenta? ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.warmBlack),
            ),
            TextSpan(
              text: 'Registrate ahora',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.orange),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Navigator.popAndPushNamed(
                      context,
                      AppRoutes.registerWithPageRoute,
                    ),
            ),
          ]))
        ],
      ),
    );
  }
}
