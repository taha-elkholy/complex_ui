import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/core/widgets/home_banner.dart';
import 'package:complex_ui/pages/home/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Encuentra tu\nproducto ideal',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 24),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: CircleAvatar(
                          backgroundColor: AppColors.warmBlack.withOpacity(.05),
                          child: SvgPicture.asset(
                            'assets/icons/charm_search.svg',
                            width: 17.5,
                            height: 17.5,
                            color: AppColors.warmBlack,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/clarity_filter-grid-circle-line.svg',
                        width: 35,
                        height: 35,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeBanner(),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: homePageProducts.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, mainAxisExtent: 325, ),
                      itemBuilder: (context, index) => ProductItem(
                        product: homePageProducts[index],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
