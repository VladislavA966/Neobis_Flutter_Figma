import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleSwitchButtons extends StatelessWidget {
  final int totalSwitches;
  final double width;
  final List<String> buttonName;
  const ToggleSwitchButtons(
      {super.key, required this.buttonName, required this.width, required this.totalSwitches});

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: width,
      cornerRadius: 20.0,
      activeBgColor: const [Colors.black],
      activeFgColor: Colors.white,
      inactiveBgColor: Colors.white,
      inactiveFgColor: Colors.black,
      initialLabelIndex: 0,
      totalSwitches: totalSwitches,
      labels: buttonName,
      radiusStyle: true,
      onToggle: (index) {},
    );
  }
}
