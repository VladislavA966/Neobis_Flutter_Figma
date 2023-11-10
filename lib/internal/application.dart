import 'package:flutter/material.dart';
import 'package:neonis_fourth_week_app/presentation/common_widgets/bottom_navigation_bar.dart';
import 'package:neonis_fourth_week_app/presentation/screens/item_info.dart';
import 'package:neonis_fourth_week_app/presentation/screens/items_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ItemsScreen(),
    );
  }
}
