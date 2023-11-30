import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';
import '../dashboard/dashboard.dart';
import '../tabbar_wedgit/course_detail.dart';

class Viewassigment_Screen extends StatelessWidget {
  const Viewassigment_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffFCF2F4),
          title: Row(
            children: [
              InkWell(
                child: const Icon(
                  Icons.clear,
                  size: 30,
                  color: Color(0xffE49136),
                ),
                onTap: () {
                  Get.back();
                },
              ),
              buildSizeWidth(5),
              addTextWorkSansMedium(
                  text: 'View Assignment',
                  textColor: const Color(0xff1C1D1F),
                  fontSize: 20.0),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addTextGeorgia(
                    text: '1. Assignment name',
                    textColor: Color(0xff1C1D1F),
                    fontSize: 18.0),
                buildSizeHeight(10),
                addTextWorkSansRegular(
                    text:
                        'Course name: AWS Certified Security – Specialty SCS-C01 [2023]',
                    textColor: const Color(0xff1C1D1F),
                    fontSize: 18.0,
                    textAlign: TextAlign.start),
                buildSizeHeight(10),
                Container(
                  decoration: BoxDecoration(
                  color: const Color(0xffFEFAF6),
                  borderRadius: BorderRadiusDirectional.circular(10),
                  border: Border.all(color: const Color(0xffD6C4B4))),
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addTextGeorgia(
                          text: 'What you\'ll learn',
                          textColor: const Color(0xff1C1D1F),
                          fontSize: 24.0),
                      buildSizeHeight(20),
                      addTextWorkSansRegular(
                          height: 2,
                          text:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.',
                          textColor: const Color(0xff1C1D1F),
                          fontSize: 16.0,
                          textAlign: TextAlign.start),
                      buildSizeHeight(20),
                      addTextGeorgia(
                          text: 'Why do we use it?',
                          textColor: const Color(0xff1C1D1F),
                          fontSize: 24.0),
                      buildSizeHeight(20),
                      addTextWorkSansRegular(
                          height: 2,
                          text:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.',
                          textColor: Color(0xff1C1D1F),
                          fontSize: 16.0,
                          textAlign: TextAlign.start),
                      buildSizeHeight(20),
                      addTextGeorgia(
                          text: 'What you\'ll learn',
                          textColor: const Color(0xff1C1D1F),
                          fontSize: 24.0),
                      buildSizeHeight(20),
                      addTextWorkSansRegular(
                          height: 2,
                          text:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy .',
                          textColor: const Color(0xff1C1D1F),
                          fontSize: 16.0,
                          textAlign: TextAlign.start),
                    ]),
                  ),
                ),
                buildSizeHeight(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      btnWidth: 107.sp,
                      btnHeight: 45.sp,
                      color: const Color(0xffFEFAF6),
                      child: addTextWorkSansRegular(
                          text: 'Edit',
                          textColor: const Color(0xffE49136),
                          fontSize: 16.0),
                      onPressed: () {
                        Get.to(const Viewassigment_Screen());
                      },
                    ),
                    buildSizeWidth(10),
                    CustomButton(
                      btnWidth: 115.sp,
                      btnHeight: 45.sp,
                      child: addTextWorkSansRegular(
                          text: 'Submit',
                          textColor: Colors.white,
                          fontSize: 16.0),
                      onPressed: () {
                        _buildExpandablesubmitDialog();
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildExpandablesubmitDialog() {
    Get.defaultDialog(
        title: '',
        titleStyle: TextStyle(fontSize: 0.0),
        titlePadding: EdgeInsets.zero,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildSizeWidth(30),
                                Container(
                                  width: 68.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: InkWell(
                                    child: const Icon(
                                      Icons.clear,
                                      color: Color(0xffE49136),
                                    ),
                                    onTap: () {
                                      Get.back();
                                    },
                                  ),
                                )
                              ]),
                          Center(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/Group 4@3x.png',
                                  height: 40.sp,
                                ),
                                addTextGeorgia(
                                    text: 'Thank You',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 27.0),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                addTextWorkSansRegular(
                                    text:
                                        'Your Assignment Submitted Successfully!',
                                    textColor: Color(0xff474747),
                                    fontSize: 15.0,
                                    textAlign: TextAlign.center),
                                buildSizeHeight(20),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CustomButton(
                                        child: addTextWorkSansRegular(
                                            text: 'Back to Home',
                                            textColor: Colors.white,
                                            fontSize: 16.0),
                                        onPressed: () {
                                         Get.to(const Dashboard());
                                        },
                                      ),
                                    ),
                                    buildSizeWidth(10),
                                    Expanded(
                                      child: CustomButton(
                                        child: addTextWorkSansRegular(
                                            text: 'Ok',
                                            textColor: Colors.white,
                                            fontSize: 16.0),
                                        onPressed: () {
                                          Get.to(Course_Detail());
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ])),
          ],
        ));
  }
}
