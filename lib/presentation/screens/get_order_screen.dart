import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';
import 'package:neonis_fourth_week_app/domain/app_fonts/app_fonts.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/items_page_widget.dart/custom_text_field.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/items_page_widget.dart/yellow_button.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/order_page_widgets.dart/order_text_field.dart';

class GetOrderPage extends StatefulWidget {
  const GetOrderPage({super.key});

  @override
  State<GetOrderPage> createState() => _GetOrderPageState();
}

class _GetOrderPageState extends State<GetOrderPage> {
  @override
  bool _value = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Подтверждение оплаты',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const OrderTextField(
              hintText: TextFieldHint.buyer,
            ),
            const SizedBox(
              height: 16,
            ),
            OrderTextField(
              hintText: TextFieldHint.phoneNumder,
              prefix: Text(
                '+996 ',
                style: AppFonts.s16w400.copyWith(
                  color: AppColors.textBlack,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const OrderTextField(
              hintText: TextFieldHint.summ,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(
                  'Продать в долг',
                  style: AppFonts.s18w700.copyWith(
                    color: AppColors.textBlack,
                  ),
                ),
                const Spacer(),
                Switch.adaptive(
                  value: _value,
                  onChanged: (newValue) => setState(() => _value = newValue),
                ),
              ],
            ),
            const  Spacer(),
            YellowButton(
              buttonWidget: Text(
                'Продолжить',
                style: AppFonts.s18w600.copyWith(color: AppColors.textBlack),
              ),
              height: 60,
              width: 380,
              onTap: null,
            ),
          ],
        ),
      ),
    );
  }
}
