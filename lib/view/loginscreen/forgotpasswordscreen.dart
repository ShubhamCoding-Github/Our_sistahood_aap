import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';
import '../../Utility/utils.dart';
import 'loginscreen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
          Stack(
            children: [
              Image.asset('assets/images/Mask Group 19@3x.png', height: 100.sp),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffE49136),
                    )),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.all(20.sp),
              child: Column(children: [
                Center(
                  child: Image.asset(
                    'assets/images/Sistahood logo@3x.png',
                    height: 70.sp,
                  ),
                ),
                buildSizeHeight(30),
                addTextWorkSansMedium(
                    text: '#Send Link',
                    textColor: const Color(0xff3B2A27),
                    fontSize: 15),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Group 4@3x.png',
                      height: 60.sp,
                    ),
                    addTextGeorgia(
                        text: 'Forgot Password',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 26.0),
                  ],
                ),
                addTextWorkSansRegular(
                    text:
                        'If you forgot your password then you can enter your email address where you want to create password',
                    textColor: const Color(0xff474747),
                    fontSize: 16.0,
                    textAlign: TextAlign.center),
                buildSizeHeight(30),
                CustomTextField(
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Email id',
                ),
                buildSizeHeight(20),
                CustomButton(
                  child: addTextWorkSansRegular(
                      text: 'Send',
                      textColor: const Color(0xffFFFFFF),
                      fontSize: 16.0),
                  onPressed: () {
                    Get.to(const LoginScreen());
                  },
                ),
              ]))
        ]))));
  }
}
