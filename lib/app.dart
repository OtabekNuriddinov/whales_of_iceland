import 'package:exam_shablon/core/config/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
      onUnknownRoute: AppRoutes.onUnknownRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
