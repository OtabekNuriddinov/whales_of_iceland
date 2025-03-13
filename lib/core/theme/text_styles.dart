import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

sealed class AppTextStyles{

  static TextStyle errorStyle = TextStyle(fontSize: AppDimens.d20, color: AppColors.red);
  static TextStyle guides = TextStyle(fontWeight: FontWeight.bold, fontSize: 32);
  static TextStyle itemNameStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.white);
  static TextStyle subNameStyle = TextStyle(fontSize: 16, color: Colors.grey);
  static TextStyle safetyStyle = TextStyle(fontSize: 34, fontWeight: FontWeight.bold);
}