import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/core/widgets/home_banner.dart';
import 'package:complex_ui/pages/home/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Encuentra tu\nproducto ideal',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
        ),
        actions: [
          SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
              backgroundColor: AppColors.warmBlack.withOpacity(.05),
              child: SvgPicture.asset(
                'assets/icons/charm_search.svg',
                width: 25,
                height: 25,
                color: AppColors.warmBlack,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 325,
              ),
              itemBuilder: (context, index) => ProductItem(
                product: homePageProducts[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
