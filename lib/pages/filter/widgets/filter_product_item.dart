import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/pages/home/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterProductItem extends StatefulWidget {
  const FilterProductItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<FilterProductItem> createState() => _FilterProductItemState();
}

class _FilterProductItemState extends State<FilterProductItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            widget.product.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 250,
          ),
          SizedBox(
            width: double.infinity,
            height: 125,
            child: DecoratedBox(
              decoration:
                  BoxDecoration(color: AppColors.warmBlack.withOpacity(0.75)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          fontSize: 13),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.product.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    ),
                    const Spacer(),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        children: [
                          Image.asset(
                            widget.product.userImage,
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mercedes',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                              ),
                              Text(
                                'Artesana',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: AppColors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset(
                            'assets/icons/bxs_message.svg',
                            width: 25,
                            height: 25,
                            color: AppColors.yellow,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset(
                            widget.product.isFav
                                ? 'assets/icons/favorito.svg'
                                : 'assets/icons/akar-icons_heart.svg',
                            width: 35,
                            height: 35,
                            color: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
