import 'package:exam_shablon/screen/home.dart';
import 'package:exam_shablon/screen/safety.dart';
import 'package:flutter/material.dart';

import '../../screen/detail.dart';
import '../../screen/error.dart';

sealed class AppRoutes {
  static const home = "/";
  static const detail = "detail";
  static const safety = "";

  static Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
    AppRoutes.home: (context) => const Home(),
    AppRoutes.detail: (context)=> const Detail(),
    AppRoutes.safety: (context)=> const Safety()
  };

  static Route<dynamic>? onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => ErrorPage(),
    );
  }
}
