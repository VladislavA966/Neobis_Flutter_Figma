import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';

class YellowButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget buttonWidget;
  final double? height;
  final double? width;
  const YellowButton({
    super.key,
    required this.buttonWidget,
     this.height,
     this.width, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: onTap != null ? AppColors.buttonYellow : Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onTap,
        child: buttonWidget,
      ),
    );
  }
}
