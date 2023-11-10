import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';
import 'package:neonis_fourth_week_app/domain/app_fonts/app_fonts.dart';

enum ButtonType {
  Buy,
  Sell,
}

class CustomButton extends StatelessWidget {
  final ButtonType buttonType;
  final Function() onTap;

  CustomButton({
    super.key,
    required this.onTap,
    required this.buttonType,
  });

  @override
  Widget build(BuildContext context) {
    Color color;
    String image;
    String text;

    switch (buttonType) {
      case ButtonType.Buy:
        color = AppColors.accentBlue;
        image = 'assets/images/plus-circle.png';
        text = 'Добавить';
        break;
      case ButtonType.Sell:
        color = AppColors.accentGreen;
        image = 'assets/images/package-plus.png';
        text = 'Продать';
        break;
    }

    return InkWell(
      onTap: onTap,
      child: Container(
        width: 195,
        height: 90,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(image),
              const SizedBox(height: 25,),
              Text(
                text,
                style: AppFonts.s14w600.copyWith(color: Colors.white)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
