import 'package:complex_ui/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({Key? key, required this.profileData}) : super(key: key);
  final ProfileData profileData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 174,
                    child: Card(
                      color: profileData.background,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Image.asset(
                          profileData.imagePath,
                          width: 120,
                          height: 120,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                      radius: 26,
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: AppColors.warmBlack,
                          radius: 25,
                          child: SvgPicture.asset(
                            profileData.iconPath,
                            color: AppColors.white,
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            profileData.title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          )
        ],
      ),
    );
  }
}

class ProfileData {
  final String imagePath;
  final String iconPath;
  final String title;
  final Color background;

  const ProfileData({
    required this.imagePath,
    required this.iconPath,
    required this.title,
    required this.background,
  });
}

List<ProfileData> profileDataList = [
  const ProfileData(
    imagePath: 'assets/images/profile_img_1.png',
    iconPath: 'assets/icons/fluent_credit-card-clock-32-filled.svg',
    title: 'Pendientes de Pago',
    background: AppColors.yellow,
  ),
  const ProfileData(
    imagePath: 'assets/images/profile_img_2.png',
    iconPath: 'assets/icons/arcticons_fast-shopping.svg',
    title: 'Pendientes de Envío',
    background: Color(0xff20BF6B),
  ),
  const ProfileData(
    imagePath:
        'assets/images/casual-life-3d-pink-delivery-drone-with-yellow-package 1.png',
    iconPath: 'assets/icons/fa-solid_truck.svg',
    title: 'Productos Enviados',
    background: Color(0xffFA8231),
  ),
  const ProfileData(
    imagePath:
        'assets/images/casual-life-3d-moving-box-with-cameras-guitar-and-books 1.png',
    iconPath: 'assets/icons/bxs_shopping-bags.svg',
    title: 'Historial de Compras',
    background: Color(0xff0FB9B1),
  ),
];
