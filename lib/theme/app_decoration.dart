import 'package:flutter/material.dart';
import 'package:cardboard/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder26 = BorderRadius.circular(
    getHorizontalSize(
      26,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );
}
