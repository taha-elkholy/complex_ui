import 'package:complex_ui/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 325,
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: const Color(0xffF5F5F5),
        child: Column(
          children: [
            SizedBox(
              height: 270,
              child: Stack(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      )
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        widget.product.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 250,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor: AppColors.white,
                      child: Center(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.warmBlack,
                          child: SvgPicture.asset(
                            'assets/icons/clarity_shopping-bag-solid.svg',
                            width: 25,
                            height: 25,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor: AppColors.white,
                      child: Center(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.warmBlack,
                          child: SvgPicture.asset(
                            widget.product.isFav
                                ? 'assets/icons/favorito.svg'
                                : 'assets/icons/akar-icons_heart.svg',
                            width: 25,
                            height: 25,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                widget.product.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const Spacer(),
            Text(
              '\$${widget.product.price}',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final String image;
  final String userImage;
  final String description;
  final bool isFav;

  const Product({
    required this.name,
    required this.price,
    required this.image,
    required this.userImage,
    required this.description,
    required this.isFav,
  });
}

List<Product> homePageProducts = const [
  Product(
      name: 'Poncho de Lana',
      price: 32.23,
      image: 'assets/images/pacari.png',
      userImage: 'assets/images/persson1.png',
      description:
          'Una biografía, de Mercedes Altamir. Este libro de 160 páginas narran la vida y obra de la artista Ecuatoriana...',
      isFav: true),
  Product(
      name: 'Bola Cristal Mitad del Mundo',
      price: 15.62,
      image: 'assets/images/iglo.png',
      userImage: 'assets/images/persson2.png',
      description:
          'Una biografía, de Mercedes Altamir. Este libro de 160 páginas narran la vida y obra de la artista Ecuatoriana...',
      isFav: false),
  Product(
      name: 'Chola Cuencana',
      price: 5.40,
      image: 'assets/images/muñeca.png',
      userImage: 'assets/images/persson3.png',
      description:
          'Una biografía, de Mercedes Altamir. Este libro de 160 páginas narran la vida y obra de la artista Ecuatoriana...',
      isFav: false),
  Product(
      name: 'Sombrero Paja Toquilla',
      price: 44.30,
      image: 'assets/images/sombrero.png',
      userImage: 'assets/images/persson4.png',
      description:
          'Una biografía, de Mercedes Altamir. Este libro de 160 páginas narran la vida y obra de la artista Ecuatoriana...',
      isFav: true),
  Product(
      name: 'Zhumir Pink',
      price: 3.60,
      image: 'assets/images/zhumir.png',
      userImage: 'assets/images/persson1.png',
      description:
          'Una biografía, de Mercedes Altamir. Este libro de 160 páginas narran la vida y obra de la artista Ecuatoriana...',
      isFav: true),
  Product(
      name: 'Norteño',
      price: 6.70,
      image: 'assets/images/norteño.png',
      userImage: 'assets/images/persson2.png',
      description:
          'Una biografía, de Mercedes Altamir. Este libro de 160 páginas narran la vida y obra de la artista Ecuatoriana...',
      isFav: false),
];
