import 'package:complex_ui/core/style/colors.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/banner_utpl.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 35,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: headers.length,
            separatorBuilder: (_, __) => const SizedBox(
              width: 10,
            ),
            itemBuilder: (context, index) => HeadersItem(
              header: headers[index],
            ),
          ),
        ),
      ],
    );
  }
}

List<Header> headers = [
  const Header(title: 'Todos', isSelected: true),
  const Header(title: 'Snacks'),
  const Header(title: 'Moda'),
  const Header(title: 'Licores'),
  const Header(title: 'Souvenirs'),
];

class HeadersItem extends StatelessWidget {
  const HeadersItem({Key? key, required this.header}) : super(key: key);

  final Header header;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: header.isSelected
            ? null
            : Border.all(color: Colors.black.withOpacity(0.2), width: 1.5),
        color: header.isSelected ? AppColors.orange : AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Text(
          header.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: header.isSelected ? AppColors.white : Colors.black),
        ),
      ),
    );
  }
}

class Header {
  final String title;
  final bool isSelected;

  const Header({
    required this.title,
    this.isSelected = false,
  });
}
