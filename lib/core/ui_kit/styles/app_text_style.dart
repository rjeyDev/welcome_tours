import 'package:flutter/material.dart';
import 'package:welcome_tours/core/ui_kit/styles/app_theme.dart';

import '../../../application/domain/enums/font_family.dart';

class AppTextStyle {
  //      10

  static TextStyle s10w400SecondaryTextPoppins = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppTheme.colorSecondaryText,
    fontFamily: FontFamily.poppins.name,
  );

  //      11

  static TextStyle s11w600ButtonTextInter = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    color: AppTheme.colorButtonText,
    fontFamily: FontFamily.inter.name,
  );

  static TextStyle s11w600WhiteInter = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    color: AppTheme.white,
    fontFamily: FontFamily.inter.name,
  );

  static TextStyle s11w600DynamicInter({Color? color}) => TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: color ?? AppTheme.colorPrimaryText,
        fontFamily: FontFamily.inter.name,
      );

  //      12

  static TextStyle s12w500DynamicPoppins({Color? color}) => TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: color ?? AppTheme.colorPrimaryText,
        fontFamily: FontFamily.poppins.name,
      );

  //      14

  static TextStyle s14w600PrimaryTextPoppins = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppTheme.colorPrimaryText,
    fontFamily: FontFamily.poppins.name,
  );

  //      16

  static TextStyle s16w600PrimaryTextPoppins = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppTheme.colorPrimaryText,
    fontFamily: FontFamily.poppins.name,
  );

  static TextStyle s16w500SecondaryTextPoppins = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppTheme.colorSecondaryText,
    fontFamily: FontFamily.poppins.name,
  );

  //      18

  static TextStyle s18w500WhitePoppins = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppTheme.white,
    fontFamily: FontFamily.poppins.name,
  );
}
