import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/style&color.dart';

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String? title;

  const IconContent({
    super.key,
    this.icon,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(icon, size: 70),
        SizedBox(height: 15),
        Text(title!, style: kLableTextStyle),
      ],
    );
  }
}
