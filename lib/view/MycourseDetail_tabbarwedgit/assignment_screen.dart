import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';

class Assignment_Screen extends StatelessWidget {
  const Assignment_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5.sp,
                          blurRadius: 5.sp)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                height: 66.h,
                                width: 70.w,
                                child: Image.asset(
                                  'assets/images/Mask  8@3x.png',
                                  height: 66.sp,
                                ),
                              ),
                            ),
                            buildSizeWidth(10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  addTextGeorgia(
                                      text: '1. Assignment name',
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 16.0),
                                  buildSizeHeight(10),
                                  addTextWorkSansRegular(
                                      text:
                                          'Lorem Ipsum is simply dummy standard dummy text ever...',
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 14.0)
                                ],
                              ),
                            )
                          ],
                        ),
                        buildSizeHeight(10),
                        Row(
                          children: [
                            CustomButton(
                              btnWidth: 107.sp,
                              btnHeight: 40.sp,
                              color: const Color(0xffFEFAF6),
                              child: addTextWorkSansRegular(
                                  text: 'Remove',
                                  textColor: Color(0xffE49136),
                                  fontSize: 16.0),
                              onPressed: () {},
                            ),
                            buildSizeWidth(10),
                            CustomButton(
                              btnWidth: 157.sp,
                              btnHeight: 40.sp,
                              child: addTextWorkSansRegular(
                                  text: 'Submit Again',
                                  textColor: Colors.white,
                                  fontSize: 16.0),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ]),
                ),
              ),
              buildSizeHeight(10),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5.sp,
                          blurRadius: 5.sp)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/Mask  8@3x.png',
                              height: 66.sp,
                            ),
                            buildSizeWidth(10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  addTextGeorgia(
                                      text: '1. Assignment name',
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 16.0),
                                  buildSizeHeight(10),
                                  addTextWorkSansRegular(
                                      text:
                                          'Lorem Ipsum is simply dummy standard dummy text ever...',
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 14.0)
                                ],
                              ),
                            )
                          ],
                        ),
                        buildSizeHeight(10),
                        Row(
                          children: [
                            buildSizeWidth(10),
                            CustomButton(
                              btnWidth: 111.sp,
                              btnHeight: 40.sp,
                              child: addTextWorkSansRegular(
                                  text: 'Submit',
                                  textColor: Colors.white,
                                  fontSize: 16.0),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ]),
                ),
              ),
              buildSizeHeight(10),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5.sp,
                          blurRadius: 5.sp)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                height: 66.h,
                                width: 70.w,
                                child: Image.asset(
                                  'assets/images/Mask  8@3x.png',
                                  height: 66.sp,
                                ),
                              ),
                            ),
                            buildSizeWidth(10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  addTextGeorgia(
                                      text: '1. Assignment name',
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 16.0),
                                  buildSizeHeight(10),
                                  addTextWorkSansRegular(
                                      text:
                                          'Lorem Ipsum is simply dummy standard dummy text ever...',
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 14.0)
                                ],
                              ),
                            )
                          ],
                        ),
                        buildSizeHeight(10),
                        Row(
                          children: [
                            CustomButton(
                              btnWidth: 107.sp,
                              btnHeight: 40.sp,
                              color: const Color(0xffFEFAF6),
                              child: addTextWorkSansRegular(
                                  text: 'Remove',
                                  textColor: const Color(0xffE49136),
                                  fontSize: 16.0),
                              onPressed: () {},
                            ),
                            buildSizeWidth(10),
                            CustomButton(
                              btnWidth: 157.sp,
                              btnHeight: 40.sp,
                              child: addTextWorkSansRegular(
                                  text: 'Submit Again',
                                  textColor: Colors.white,
                                  fontSize: 16.0),
                              onPressed: () {
                                // _buildExpandableDialog();
                              },
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ])));
  }
}
