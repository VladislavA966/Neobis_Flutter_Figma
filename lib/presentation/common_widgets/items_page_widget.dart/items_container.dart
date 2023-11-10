import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';
import 'package:neonis_fourth_week_app/domain/app_fonts/app_fonts.dart';

class ItemsContainer extends StatelessWidget {
  const ItemsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              blurRadius: 3,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '№54931',
                    style: AppFonts.s16w700.copyWith(
                      color: AppColors.textBlack,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/tshirt.png'),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    children: [
                      Text(
                        'Off-white, Футболка из рельефной\nткани',
                        style: AppFonts.s14w600.copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const ShapeDecoration(
                              color: AppColors.accentGreen,
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '500 ₽',
                            style: AppFonts.s16w400.copyWith(
                              color: AppColors.textBlack,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const ShapeDecoration(
                              color: AppColors.violet,
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '1200 ₽',
                            style: AppFonts.s16w400.copyWith(
                              color: AppColors.textBlack,
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Text(
                            '54 шт',
                            style: AppFonts.s16w700.copyWith(
                              color: AppColors.textBlack,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/cube-01.png',
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Склад',
                            style: AppFonts.s14w400
                                .copyWith(color: AppColors.textGrey),
                          ),
                          const SizedBox(
                            width: 155,
                          ),
                          Text(
                            '120 шт',
                            style: AppFonts.s14w600.copyWith(
                              color: AppColors.textBlack,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
