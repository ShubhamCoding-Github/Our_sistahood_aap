
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox buildSizeHeight(double height) {
  return SizedBox(
    height: height.h,
  );
}

SizedBox buildSizeWidth(double width) {
  return SizedBox(
    width: width.w,
  );
}

Text addTextGeorgia(
    { required String text,
      required Color textColor,
      required double fontSize,
      TextAlign? textAlign,
      double? height}) {
  return Text(
    text,
    style: opengeorgiaTextStyle().copyWith(
      color: textColor,
      height: height ?? 1.2,
      fontSize: fontSize.sp,
    ),
    textAlign: textAlign,
  );
}

TextStyle opengeorgiaTextStyle() {
  return const TextStyle(fontFamily: 'georgia');
}

Text addTextWorkSansMedium(
    {required String text,
      required Color textColor,
      required double fontSize,
      TextAlign? textAlign,
      TextDecoration? textDecoration,
      double? height}) {
  return Text(
    text,
    style: openMediumTextStyle().copyWith(
      color: textColor,
      height: height ?? 1.2,
      decoration: textDecoration,
      fontSize: fontSize.sp,
    ),
    textAlign: textAlign,
  );
}

TextStyle openMediumTextStyle() {
  return const TextStyle(fontFamily: 'WorkSansMedium');
}

Text addTextWorkSansRegular(
    {required String text,
      required Color textColor,
      required double fontSize,
      TextAlign? textAlign,
      TextDecoration? textDecoration,
      double? height}) {
  return Text(
    text,
    style: SemiRegularTextStyle().copyWith(
      color: textColor,
      height: height ?? 1.2,
      decoration: textDecoration,
      fontSize: fontSize.sp,
    ),
    textAlign: textAlign,
  );
}

// ignore: non_constant_identifier_names
TextStyle SemiRegularTextStyle() {
  return const TextStyle(fontFamily: 'WorkSansRegular');
}

Text addTextWorkSansBold(
    {required String text,
      required Color textColor,
      required double fontSize,
      TextAlign? textAlign,
      TextDecoration? textDecoration,
      double? height}) {
  return Text(
    text,
    style: SansBoldTextStyle() .copyWith(
      color: textColor,
      height: height ?? 1.2,
      decoration: textDecoration,
      fontSize: fontSize.sp,
    ),
    textAlign: textAlign,
  );
}


TextStyle SansBoldTextStyle() {
  return const TextStyle(fontFamily:'WorkSansBold');
}
