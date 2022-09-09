import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  final Color clr;
  final Widget? cardChild;
  final VoidCallback? onPress;
  const ReUsableCard({
    super.key,
    required this.clr,
    this.cardChild,
    this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: clr,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
