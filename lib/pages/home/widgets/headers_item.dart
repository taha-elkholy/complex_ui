import 'package:complex_ui/core/style/colors.dart';
import 'package:flutter/material.dart';

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
