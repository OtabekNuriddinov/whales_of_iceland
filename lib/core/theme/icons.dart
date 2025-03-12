import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

sealed class AppIcons{



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