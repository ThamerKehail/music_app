import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons(
      {super.key,
      required this.buttonColor,
      this.buttonBorderColor,
      required this.buttonWidget});
  final Color buttonColor;
  final Color? buttonBorderColor;
  final Widget buttonWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: buttonBorderColor ?? Colors.transparent,
          )),
      padding: const EdgeInsets.all(12),
      child: buttonWidget,
    );
  }
}
