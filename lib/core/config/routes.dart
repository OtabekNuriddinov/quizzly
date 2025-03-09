import 'package:flutter/material.dart';
import '/screen/result.dart';
import '/screen/home.dart';
import '/screen/questioning.dart';

sealed class AppRoutes{
  static final home = "/";
  static final questioning = "questioning";
  static final result = "result";

  static Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    AppRoutes.home: (context)=>const Home(),
    AppRoutes.questioning: (context){
      final level = ModalRoute.of(context)?.settings.arguments as String;
      return Questioning(level: level);
    },
    AppRoutes.result: (context)=>Result()
  };
}