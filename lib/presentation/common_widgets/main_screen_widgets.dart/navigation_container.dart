import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';
import 'package:neonis_fourth_week_app/domain/app_fonts/app_fonts.dart';

class NavigationContainer extends StatelessWidget {
  const NavigationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/calendar.png'),
              const SizedBox(
                height: 20,
              ),
              Text(
                'История продаж',
                textAlign: TextAlign.center,
                style: AppFonts.s14w600.copyWith(color: AppColors.textBlack),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/users-01.png'),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Список должников',
                textAlign: TextAlign.center,
                style: AppFonts.s14w600.copyWith(color: AppColors.textBlack),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/file-plus-02.png'),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Мои расходы',
                textAlign: TextAlign.center,
                style: AppFonts.s14w600.copyWith(color: AppColors.textBlack),
              )
            ],
          ),
        ],
      ),
    );
  }
}
