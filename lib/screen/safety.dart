import 'package:exam_shablon/core/theme/dimens.dart';
import 'package:exam_shablon/core/theme/icons.dart';
import 'package:exam_shablon/core/theme/strings.dart';
import 'package:exam_shablon/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

import '../core/theme/colors.dart';

class Safety extends StatelessWidget {
  const Safety({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppDimens.p30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings.safety,
                    style: AppTextStyles.safetyStyle,
                  ),
                  Spacer(),
                  _goBack(context),
                ],
              ),
              Text(
                AppStrings.instruct,
                style: AppTextStyles.safetyStyle,
              ),
              AppDimens.h20,
              Text(AppStrings.safetyText)
            ],
          ),
        ),
      ),
    );
  }

  IconButton _goBack(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: AppIcons.share
    );
  }
}
