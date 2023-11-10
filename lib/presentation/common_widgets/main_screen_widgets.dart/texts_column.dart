import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';
import 'package:neonis_fourth_week_app/domain/app_fonts/app_fonts.dart';

class FirstColumn extends StatelessWidget {
  const FirstColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Торговая точка',
          style: AppFonts.s14w400.copyWith(
            color: AppColors.textGrey,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          'Проход 456а',
          style: AppFonts.s18w700.copyWith(
            color: AppColors.textBlack,
          ),
        )
      ],
    );
  }
}
