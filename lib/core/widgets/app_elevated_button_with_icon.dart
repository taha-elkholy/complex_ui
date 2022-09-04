import 'package:complex_ui/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppElevatedButtonWithIcon extends StatelessWidget {
  const AppElevatedButtonWithIcon({
    Key? key,
    required this.label,
    this.iconPath,
    this.primaryColor,
    this.labelColor, required this.onPressed,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String label;
  final String? iconPath;
  final Color? primaryColor;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: AppColors.white)),
          primary: primaryColor ?? AppColors.orange.withOpacity(.9),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (iconPath != null)
                ? SvgPicture.asset(
                    iconPath!,
                    width: 25,
                    height: 25,
                  )
                :const  SizedBox(
                    width: 25,
                  ),
            const Spacer(),
            Text(
              label,
              style: TextStyle(
                fontSize: 18,
                color: labelColor ?? AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const  SizedBox(
              width: 25,
            ),
          ],
        ),
      ),
    );
  }
}
