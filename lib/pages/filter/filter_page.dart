import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/core/widgets/home_banner.dart';
import 'package:complex_ui/pages/filter/widgets/filter_product_item.dart';
import 'package:complex_ui/pages/home/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/icons/clarity_filter-grid-circle-line.svg',
          width: 35,
          height: 35,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
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
                mainAxisExtent: 250,
              ),
              itemBuilder: (context, index) => FilterProductItem(
                product: homePageProducts[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
