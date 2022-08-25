import 'package:bmi_calculator/theming/theming.dart' as ThemingConstants;
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: ThemingConstants.kLabelTextStyle,
        ),
      ],
    );
  }
}
