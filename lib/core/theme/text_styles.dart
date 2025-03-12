import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

sealed class AppTextStyles{

  static TextStyle errorStyle = TextStyle(fontSize: AppDimens.d20, color: AppColors.red);
  static TextStyle guides = TextStyle(fontWeight: FontWeight.bold, fontSize: 32);
}