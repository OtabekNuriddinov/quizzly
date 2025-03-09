import 'package:flutter/material.dart';
import '../theme/colors.dart';

class MyHomeElevated extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color backColor;
  final Color textColor;
  final void Function()onPressed;
  const MyHomeElevated({
    required this.borderColor,
    required this.text,
    required this.backColor,
    required this.textColor,
    required this.onPressed,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: backColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: borderColor, width: 2))),
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
    );
  }
}
