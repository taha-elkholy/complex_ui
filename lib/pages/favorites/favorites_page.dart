import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/core/widgets/background.dart';
import 'package:complex_ui/pages/favorites/widgets/favorites_item.dart';
import 'package:complex_ui/pages/home/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favoritos',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 24),
        ),
        actions: [
          SvgPicture.asset(
            'assets/icons/clarity_shopping-bag-solid.svg',
            width: 30,
            height: 30,
            color: AppColors.yellow,
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Stack(
        children: const [
          Background(color1: AppColors.green, color2: AppColors.orange),
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
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) =>
          FavoritesItem(product: homePageProducts[index]),
      separatorBuilder: (_, __) => const SizedBox(
        height: 16,
      ),
      itemCount: homePageProducts.length,
    );
  }
}
