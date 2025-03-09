import 'package:flutter/material.dart';

import 'colors.dart';

sealed class AppTextStyles{

  static TextStyle choosingStyle = TextStyle(
    letterSpacing: 2,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: AppColors.white,
  );

  static TextStyle questionStyle = TextStyle(color: AppColors.black70, fontSize: 24);
  static TextStyle counter = TextStyle(fontSize: 16, color: AppColors.backColor, fontWeight: FontWeight.bold);
  static TextStyle zero = TextStyle(fontSize: 18, color: AppColors.red);
  static TextStyle ten = TextStyle(fontSize: 18, color: AppColors.green);
  static TextStyle resultStyle = TextStyle(fontSize: 24, color: AppColors.backColor);
  static TextStyle hundredStyle = TextStyle(fontSize: 34, color: AppColors.backColor, fontWeight: FontWeight.bold);
  static TextStyle timer = TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.backColor);
}