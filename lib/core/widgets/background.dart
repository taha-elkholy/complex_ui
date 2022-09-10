import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.color1, required this.color2})
      : super(key: key);
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.07,
            ),
            Row(
              children: [
                const Spacer(),
                HalfCircle(
                  color: color1,
                  diameter: size.width ,
                  isRight: false,
                ),
              ],
            ),
            const Spacer()
          ],
        ),
        Positioned(
          bottom: size.height * 0.07,
          child: HalfCircle(
            color: color2,
            diameter: size.width * 0.9,
            isRight: true,
          ),
        ),
      ],
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  HalfCirclePainter({this.isToRight = true, required this.color});

  // isToRight ==> the arc looks to right
  final bool? isToRight;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint outerPaint = Paint()..color = color.withOpacity(0.5);

    final Paint innerPaint = Paint()..color = color.withOpacity(0.75);

    double degToRad(double deg) => deg * (pi / 180.0);

    final outerPath = Path()
      ..addArc(
        Rect.fromCircle(
          center: isToRight == true
              ? Offset(size.width * -0.1, size.height / 2)
              : Offset(size.width, size.height / 2),
          radius: size.width / 2,
        ),
        degToRad(isToRight == true ? -90 : 90),
        degToRad(180),
      );

    final innerPath = Path()
      ..addArc(
        Rect.fromCircle(
          center: isToRight == true
              ? Offset(size.width * -0.1, size.height / 2)
              : Offset(size.width, size.height / 2),
          radius: (size.width / 2) * .75,
        ),
        degToRad(isToRight == true ? -90 : 90),
        degToRad(180),
      );

    canvas.drawPath(outerPath, outerPaint);
    canvas.drawPath(innerPath, innerPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class HalfCircle extends StatelessWidget {
  const HalfCircle(
      {Key? key,
      required this.color,
      required this.diameter,
      required this.isRight})
      : super(key: key);
  final Color color;
  final double diameter;
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HalfCirclePainter(
        isToRight: isRight,
        color: color,
      ),
      size: Size(diameter, diameter),
    );
  }
}
