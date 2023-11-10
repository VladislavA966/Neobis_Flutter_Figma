import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';
import 'package:neonis_fourth_week_app/domain/app_fonts/app_fonts.dart';

class CustomTextButton extends StatelessWidget {
  final Function() onPressed;
  const CustomTextButton({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        'Календарь',
        style: AppFonts.s14w400.copyWith(
          color: AppColors.textViolet,
        ),
      ),
    );
  }
}
