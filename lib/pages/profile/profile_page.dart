import 'dart:ui';

import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/core/widgets/background.dart';
import 'package:complex_ui/pages/profile/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.warmBlack,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColors.warmBlack,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light),
      ),
      body: Stack(
        children: const [
          Background(color1: AppColors.yellow, color2: AppColors.pink),
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
    return ListView(
      padding: const EdgeInsets.all(20),
      physics: const BouncingScrollPhysics(),
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/persson4.png',
              width: 80,
              height: 80,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sandra Sarango',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: AppColors.white, fontSize: 16),
                ),
                Text(
                  '@s.sarango',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.white),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/entypo_location.svg',
                      width: 15,
                      height: 15,
                      color: AppColors.white,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Quito-Ecuador',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.white),
                    ),
                  ],
                ),
              ],
            )),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              'assets/icons/ri_settings-5-fill.svg',
              width: 30,
              height: 30,
              color: AppColors.white,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Compra y gana premios increibles',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: AppColors.white, fontSize: 16),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 15,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xffF95738),
                  Color(0xffFFC107),
                  Color(0xff5DEFBA),
                  Color(0xffFEFCFB),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        GridView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: profileDataList.length,
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 4,
              childAspectRatio: .8),
          itemBuilder: (context, index) => ProfileItem(
            profileData: profileDataList[index],
          ),
        ),
      ],
    );
  }
}
