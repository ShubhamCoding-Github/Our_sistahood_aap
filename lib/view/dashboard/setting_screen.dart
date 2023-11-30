import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/dashboard/changepassword_screen.dart';
import 'package:our_sistahood_app/view/loginscreen/loginscreen.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _switchValue = true;

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
                  Icons.arrow_back_ios,
                  color: Color(0xffE49136),
                ),
                onTap: () {
                  Get.back();
                },
              ),
              addTextWorkSansMedium(
                  text: 'Settings',
                  textColor: Color(0xff1C1D1F),
                  fontSize: 19.0),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/lock_icon@3x.png',
                              height: 22.sp,
                            ),
                            buildSizeWidth(10),
                            addTextWorkSansMedium(
                                text: 'Change Password',
                                textColor: Color(0xff1C1D1F),
                                fontSize: 18.0),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,color: Color(0xffE49136),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Get.to(ChangePasswordScreen());
                },
              ),
              buildSizeHeight(20),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/2203538_alarm_bell_notification_ring_icon@3x.png',
                              height: 22.sp,
                            ),
                            buildSizeWidth(10),
                            addTextWorkSansMedium(
                                text: 'Notifications',
                                textColor: Color(0xff1C1D1F),
                                fontSize: 18.0),
                          ],
                        ),
                      ),
                      Transform.scale(
                        transformHitTests: false,
                        scale: 0.8,
                        child: CupertinoSwitch(
                          activeColor: const Color(0xffE49136),
                          value: _switchValue,
                          onChanged: (value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  // Get.to(Card_Screen());
                },
              ),
              const Spacer(),
              Center(
                child: CustomButton(
                  btnWidth: 214.w,
                  btnHeight: 45.h,
                  child: addTextWorkSansRegular(
                      text: 'Log Out',
                      textColor: const Color(0xffFFFFFF),
                      fontSize: 16.0),
                  onPressed: () {
                    Get.to(const LoginScreen());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
