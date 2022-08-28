import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/pages/widgets/background.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const Background(
            color1: AppColors.orange,
            color2: AppColors.yellow,
          ),
          body(context),
        ],
      ),
    );
  }
}

Widget body(context) {
  final size = MediaQuery.of(context).size;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: size.width,
          height: size.height * 0.07,
        ),
        SizedBox(
          height: size.height * 0.2,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: const [
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'eShop',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    color: Colors.grey,
                    width: 12,
                    thickness: 1.5,
                  ),
                ),
                Text(
                  'La nueva\nforma de \ncomprar',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 1.6,
          child: Image.asset(
            'assets/images/mega_creator_1.png',
          ),
        ),
        Transform.translate(
          offset: Offset(0, size.height * -0.05),
          child: AspectRatio(
            aspectRatio: 2,
            child: Image.asset(
              'assets/images/casual_life_3d_dog_1.png',
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 60,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                    child: Text(
                  'Registrar',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )),
              ),
            ),
            SizedBox(
              width: 150,
              height: 60,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black.withOpacity(.3))),
                child: const Center(
                    child: Text(
                  'Ingresar',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
