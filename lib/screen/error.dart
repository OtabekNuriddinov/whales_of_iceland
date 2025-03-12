import '/core/theme/text_styles.dart';
import 'package:flutter/material.dart';


class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Not Found")),
      body: Center(
        child: Text(
          "Oops! Bu sahifa mavjud emas.",
          style: AppTextStyles.errorStyle,
        ),
      ),
    );
  }
}