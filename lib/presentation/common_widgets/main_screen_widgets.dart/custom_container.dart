import 'package:flutter/material.dart';

import 'package:neonis_fourth_week_app/domain/app_fonts/app_fonts.dart';

class CustomContainer extends StatelessWidget {
  final Color colorName;
  final Color colorPrice;
  final String price;
  final String name;
  final String image;
  final Color bgColor;
  const CustomContainer(
      {super.key,
      required this.price,
      required this.name,
      required this.image,
      required this.colorName,
      required this.colorPrice,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 100,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: AppFonts.s14w400.copyWith(color: colorName),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: AppFonts.s18w700.copyWith(
                    color: colorPrice,
                  ),
                ),
                Image.asset(image)
              ],
            )
          ],
        ),
      ),
    );
  }
}
