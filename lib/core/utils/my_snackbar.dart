import 'package:flutter/material.dart';
import '../theme/colors.dart';

sealed class AppSnackbar {
  static void msg(BuildContext context, String message,
      {Color color = AppColors.black70}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          backgroundColor: color,
          content: Text(
            message,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
  }
}
