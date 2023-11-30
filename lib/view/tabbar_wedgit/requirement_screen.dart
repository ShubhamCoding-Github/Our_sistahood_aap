import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utility/utils.dart';

class Requirement_Screen extends StatefulWidget {
  const Requirement_Screen({Key? key}) : super(key: key);

  @override
  State<Requirement_Screen> createState() => _Requirement_ScreenState();
}

class _Requirement_ScreenState extends State<Requirement_Screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.all(20.sp),
            child: DottedBorder(
              padding: EdgeInsets.zero,
              borderPadding: EdgeInsets.zero,
              color: const Color(0xffAF5143),
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              child: Container(
                height: 170.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.sp),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                          child: addTextGeorgia(
                        text: 'Requirements',
                        textColor: const Color(0xffAF5143),
                        fontSize: 24,
                      )),
                      buildSizeHeight(20),
                      addTextWorkSansRegular(
                          text:
                              'Working knowledge of AWS and AWS Associate certification is recommended',
                          textColor: const Color(0xffAF5143),
                          fontSize: 16.0,
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
