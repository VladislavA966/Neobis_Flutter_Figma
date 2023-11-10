import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/domain/app_colors/app_colors.dart';
import 'package:neonis_fourth_week_app/domain/app_fonts/app_fonts.dart';

import 'package:neonis_fourth_week_app/presentation/common_widgets/items_page_widget.dart/custom_text_field.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/items_page_widget.dart/items_container.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/items_page_widget.dart/route_button.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/items_page_widget.dart/yellow_button.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/main_screen_widgets.dart/toggle_switch.dart';
import 'package:neonis_fourth_week_app/presentation/screens/item_info.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({Key? key}) : super(key: key);

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  List<int> items = List.generate(20, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Выбрать товары',
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
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          children: [
            const Row(
              children: [
                CustomTextField(),
                SizedBox(
                  width: 10,
                ),
                RouteButton(),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const ToggleSwitchButtons(
              totalSwitches: 3,
              buttonName: [
                'Моя точка',
                'Проход 12г',
                'Контейнер 454',
              ],
              width: 150,
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return const ItemsContainer();
                },
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Spacer(),
                YellowButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItemInfoScreen(
                         
                        ),
                      ),
                    );
                  },
                  buttonWidget: Row(
                    children: [
                      Text(
                        'Выбрать',
                        style: AppFonts.s16w600.copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  height: 50,
                  width: 150,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
