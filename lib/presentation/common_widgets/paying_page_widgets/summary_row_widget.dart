
import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';
import 'package:neonis_fourth_week_app/domain/app_fonts/app_fonts.dart';

enum SummaryRowState { quantity, summ, discount, paid }

class SummaryRow extends StatelessWidget {
  final SummaryRowState state;
  const SummaryRow({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = '';
    String content = '';

    switch (state) {
      case SummaryRowState.quantity:
        title = 'Количество';
        content = '256 шт';
        break;
      case SummaryRowState.summ:
        title = 'Сумма';
        content = '100 400  ₽';
      case SummaryRowState.discount:
        title = 'Скидка';
        content = '  + Добавить';
        break;
      case SummaryRowState.paid:
        title = 'Итого к оплате';
        content = '100 400  ₽';
        break;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppFonts.s16w600.copyWith(
            color: AppColors.textBlack,
          ),
        ),
        _buildContentWidget(content),
      ],
    );
  }

  Widget _buildContentWidget(String content) {
    if (state == SummaryRowState.discount) {
      return TextButton(
        onPressed: () {},
        child: Text(
          content,
          style: AppFonts.s16w400.copyWith(
            color: AppColors.textViolet,
          ),
        ),
      );
    } else {
      return Text(
        content,
        style: AppFonts.s16w400.copyWith(
          color: AppColors.textGrey,
        ),
      );
    }
  }
}