import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/main_screen_widgets.dart/custom_button.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/main_screen_widgets.dart/custom_container.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/main_screen_widgets.dart/navigation_container.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/main_screen_widgets.dart/text_button.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/main_screen_widgets.dart/texts_column.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/main_screen_widgets.dart/toggle_switch.dart';
import 'package:neonis_fourth_week_app/presentation/screens/items_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FirstColumn(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_active_outlined,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ToggleSwitchButtons(
                    totalSwitches: 3,
                    buttonName: ['Сегодня', '7 дней', 'Месяц'],
                    width: 90,
                  ),
                  CustomTextButton(
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  CustomContainer(
                    colorName: AppColors.textBlack,
                    colorPrice: AppColors.textBlack,
                    price: '42 310 ₽',
                    name: 'Касса',
                    image: 'assets/images/bank-note-01.png',
                    bgColor: AppColors.lightBlue,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CustomContainer(
                    colorName: AppColors.textBlack,
                    colorPrice: AppColors.textBlack,
                    price: '120',
                    name: 'Продано',
                    image: 'assets/images/shopping-bag-03.png',
                    bgColor: AppColors.lightPink,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  CustomContainer(
                    colorName: AppColors.textBlack,
                    colorPrice: AppColors.accentGreen,
                    price: '+32 000',
                    name: 'Продано',
                    image: 'assets/images/coins-stacked-02.png',
                    bgColor: AppColors.lightGreen,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CustomContainer(
                    colorName: AppColors.textBlack,
                    colorPrice: AppColors.red,
                    price: '-2400',
                    name: 'Расходы',
                    image: 'assets/images/receipt.png',
                    bgColor: AppColors.lightOrange,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const NavigationContainer(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemsScreen(),
                        ),
                      );
                    },
                    buttonType: ButtonType.Buy,
                  ),
                  CustomButton(
                    onTap: () {},
                    buttonType: ButtonType.Sell,
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
