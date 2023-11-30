import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/Utility/utils.dart';
import 'package:our_sistahood_app/view/dashboard/dashboard.dart';
import 'package:our_sistahood_app/view/loginscreen/createaccountscreen.dart';
import 'package:our_sistahood_app/view/loginscreen/loginscreen.dart';

import '../../Utility/custum_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFCF2F4),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/Mask Group 19@3x.png', height: 100.sp),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 20),
                child: InkWell(
                  child: addTextWorkSansRegular(
                      textDecoration: TextDecoration.underline,
                      text: 'Skip',
                      textColor: const Color(0xffE49136),
                      fontSize: 17.0),
                  onTap: () {
                    Get.to(const Dashboard());
                  },
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
              children: [
                Center(
                    child: Image.asset(
                  'assets/images/Mask Group 20@3x.png',
                  height: 300.sp,
                )),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Group 4@3x.png',
                      height: 60.sp,
                    ),
                    addTextGeorgia(
                        text: 'Online Education',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 24.0)
                  ],
                ),
                addTextWorkSansBold(
                    text: 'Feel Likes Real Classroom',
                    textColor: const Color(0xffE49136),
                    fontSize: 36.0,
                    textAlign: TextAlign.center),
                addTextWorkSansRegular(
                    text:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply.',
                    textColor: const Color(0xff1C1D1F),
                    fontSize: 16.0,
                    textAlign: TextAlign.center),
                buildSizeHeight(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 20.h,
                      height: 3.h,
                      decoration: BoxDecoration(
                          color: const Color(0xffE49136),
                          borderRadius: BorderRadius.circular(3)),
                    ),
                    buildSizeWidth(3),
                    Container(
                      width: 40.h,
                      height: 3.h,
                      decoration: BoxDecoration(
                          color: const Color(0xffE49136),
                          borderRadius: BorderRadius.circular(3)),
                    ),
                    buildSizeWidth(3),
                    Container(
                      width: 20.h,
                      height: 3.h,
                      decoration: BoxDecoration(
                          color: const Color(0xffE49136),
                          borderRadius: BorderRadius.circular(3)),
                    ),
                  ],
                ),
                buildSizeHeight(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      btnWidth: 105,
                      child: addTextWorkSansRegular(
                          text: 'Login',
                          textColor: const Color(0xffFFFFFF),
                          fontSize: 16.0),
                      onPressed: () {
                        Get.to(const LoginScreen());
                      },
                    ),
                    buildSizeWidth(15),
                    CustomButton(
                      color: const Color(0xffFEFAF6),
                      btnWidth: 105,
                      child: addTextWorkSansRegular(
                        text: 'Sign up',
                        textColor: const Color(0xffE49136),
                        fontSize: 16.0,
                      ),
                      onPressed: () {
                        Get.to(const CreateAccountScreen());
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
