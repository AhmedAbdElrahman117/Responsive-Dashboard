import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/size_config.dart';

class FontStyles {
  static TextStyle regular12(BuildContext context) => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w400,
        color: Color(0xFFAAAAAA),
      );
  static TextStyle regular14(BuildContext context) => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w400,
        color: Color(0xFFAAAAAA),
      );

  static TextStyle regular16(BuildContext context) => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
        color: Color(0xFF064061),
      );

  static TextStyle medium16(BuildContext context) => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
        color: Color(0xFF064061),
      );

  static TextStyle medium20(BuildContext context) => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500,
        color: Color(0xFFFFFFFF),
      );

  static TextStyle semiBold16(BuildContext context) => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w600,
        color: Color(0xFF064061),
      );

  static TextStyle semiBold18(BuildContext context) => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w600,
        color: Color(0xFFFFFFFF),
      );

  static TextStyle semiBold20(BuildContext context) => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w600,
        color: Color(0xFF064061),
      );

  static TextStyle semiBold24(BuildContext context) => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w600,
        color: Color(0xFF4EB7F2),
      );

  static TextStyle bold16(BuildContext context) => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w700,
        color: Color(0xFF4EB7F2),
      );
}

getResponsiveFontSize(BuildContext context, {required int fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontSize;

  double lower = fontSize * 0.7;
  double upper = fontSize * 1.02;

  return responsiveFontSize.clamp(lower, upper);
}

getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width <= SizeConfig.mobile) {
    return width / 600;
  } else if (width > SizeConfig.mobile || width <= SizeConfig.desktop) {
    return width / 900;
  } else {
    return width / 1300;
  }
}
