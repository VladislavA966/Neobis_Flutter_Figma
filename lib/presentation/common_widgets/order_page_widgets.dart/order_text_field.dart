import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';
import 'package:neonis_fourth_week_app/domain/app_fonts/app_fonts.dart';

enum TextFieldHint {
  buyer,
  phoneNumder,
  summ,
}

class OrderTextField extends StatelessWidget {
  final TextFieldHint hintText;
  final Widget? prefix;

  const OrderTextField({
    super.key,
    required this.hintText,
    this.prefix,
  });
  String getHintText() {
    switch (hintText) {
      case TextFieldHint.buyer:
        return 'Покупателя';
      case TextFieldHint.phoneNumder:
        return '(000) 000 000';
      case TextFieldHint.summ:
        return 'Сумма';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefix: prefix,
          filled: true,
          fillColor: AppColors.bgTextField,
          hintText: getHintText(),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              12,
            ),
          )),
    );
  }
}
