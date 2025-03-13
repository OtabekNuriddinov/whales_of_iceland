import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

sealed class AppIcons{

  /// Detail Page
  static Icon length = Icon(Icons.height, color: AppColors.blue);
  static Icon weight = Icon(Icons.shopping_basket_outlined, color: AppColors.blue);
  static Icon speed = Icon(Icons.speed_outlined, color: AppColors.blue);
  static Icon toLeft = Icon(Icons.fast_rewind, color: AppColors.grey, size: AppDimens.d40);
  static Icon toRight = Icon(Icons.fast_forward, color: AppColors.grey, size: AppDimens.d40);
  static Icon play = Icon(Icons.play_circle_outlined, color: AppColors.blue, size: AppDimens.d70);
  static Icon pause = Icon(Icons.pause_circle_outlined, color: AppColors.blue, size: AppDimens.d70);

  /// Home Page
  static Icon share = Icon(Icons.ios_share_sharp, color: AppColors.grey);
  static Icon dashboard = Icon(Icons.dashboard);
  static Icon help = Icon(Icons.help_outline_sharp);
  static Icon person = Icon(Icons.person_2_outlined);

}

extension ExtSvg on SvgPicture {
  SvgPicture copyWith({double? height, double? width, Color? color}) {
    return SvgPicture(
      bytesLoader,
      height: height ?? this.height,
      width: width ?? this.width,
      colorFilter: color != null ? ColorFilter.mode(color, BlendMode.srcIn) : colorFilter,
    );
  }
}