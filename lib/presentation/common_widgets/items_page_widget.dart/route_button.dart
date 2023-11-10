import 'package:flutter/material.dart';

class RouteButton extends StatelessWidget {
  const RouteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: const Icon(Icons.route),
    );
  }
}