import 'package:flutter/material.dart';
import '../theme/colors.dart';

sealed class AppSnackbar {
  static void msg(BuildContext context, String message, {Color color = AppColors.black}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: TextStyle(color: AppColors.white),
          ),
          backgroundColor: color,
        ),
      );
  }
}
