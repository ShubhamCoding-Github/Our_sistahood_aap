import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/Utility/utils.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  Color? color;
  Color? txtColor;
  Function() onPressed;
  String? text;
  double? btnWidth;
  double? btnHeight;
  double? txtSize;
  TextStyle? textStyle;
  Widget? child;
  Color? borderColor;


  CustomButton(
      {Key? key,
        this.color,
        this.text,
        this.txtColor,
        required this.onPressed,
        this.btnWidth,
        this.txtSize,
        this.btnHeight,
        this.textStyle,
        this.borderColor,
        this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: btnHeight ?? 45.0,
        width: btnWidth ?? Get.width,
        decoration: BoxDecoration(
          color: color ?? const Color (0xffE49136),
          border:
          Border.all(color: borderColor ?? const Color(0xffE49136), width: 1),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Center(
          child: child ??
              Text(
                text ?? "",
                style: textStyle ??
                    SemiRegularTextStyle().copyWith(
                        color: txtColor ?? const Color(0xffFFFFFF),
                        fontSize: txtSize ?? 16.0,
                        height: 1.2),
              ),
        ),
      ),
    );
  }
}
