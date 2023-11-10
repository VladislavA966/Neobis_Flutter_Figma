import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';
import 'package:neonis_fourth_week_app/domain/app_fonts/app_fonts.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/items_page_widget.dart/items_container.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/items_page_widget.dart/yellow_button.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/main_screen_widgets.dart/toggle_switch.dart';
import 'package:neonis_fourth_week_app/presentation/screens/get_order_screen.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ItemInfoScreen extends StatefulWidget {
  const ItemInfoScreen({super.key});

  @override
  State<ItemInfoScreen> createState() => _ItemInfoScreenState();
}

class _ItemInfoScreenState extends State<ItemInfoScreen> {
  List<String> buttonName = [
    'Товар 1',
    'Товар 2',
    'Товар 3',
    'Товар 4',
    'Товар 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Указать количество',
          style: TextStyle(color: Colors.black),
        ),
         leading: IconButton(
          onPressed: () {Navigator.pop(context);},
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
            ToggleSwitchButtons(
              buttonName: buttonName,
              width: 90,
              totalSwitches: buttonName.length,
            ),
            const SizedBox(
              height: 16,
            ),
            const ItemsContainer(),
            const SizedBox(
              height: 8,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Итого',
                  style: AppFonts.s16w600.copyWith(
                    color: AppColors.textBlack,
                  ),
                ),
                Text(
                  '100 402 ₽',
                  style: AppFonts.s16w400.copyWith(
                    color: AppColors.textGrey,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            YellowButton(
              buttonWidget: Text(
                'Продолжить',
                style: AppFonts.s18w600.copyWith(color: AppColors.textBlack),
              ),
              height: 60,
              width: 380,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GetOrderPage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
