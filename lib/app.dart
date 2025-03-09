import 'package:flutter/material.dart';
import 'package:quizzly_app/core/config/routes.dart';

class Quizzly extends StatelessWidget {
  const Quizzly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}
