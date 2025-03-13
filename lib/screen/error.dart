import 'package:exam_shablon/core/theme/strings.dart';

import '/core/theme/text_styles.dart';
import 'package:flutter/material.dart';


class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.notFound)),
      body: Center(
        child: Text(
          AppStrings.oops,
          style: AppTextStyles.errorStyle,
        ),
      ),
    );
  }
}