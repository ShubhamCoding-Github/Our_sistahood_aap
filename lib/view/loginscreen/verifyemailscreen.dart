import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/loginscreen/createaccountscreen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final _pinPutController = TextEditingController();

int _counter = 0;
  late Timer _timer;
  bool resendStatus = false;

  @override
  void initState() {
    super.initState();
    // Create a timer that runs every 1 second
    init();
  }

  String getFormattedTimer() {
    return _counter.toString().padLeft(2, '0');
  }

  void init() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _counter++;
        if (_counter >= 49) {
          _timer.cancel();
          resendStatus = true;
        }
      });
    });
  }
  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to release resources
    super.dispose();
  }
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/Sistahood logo@3x.png',
                  height: 70.sp,
                ),
              ),
              buildSizeHeight(30),
              addTextWorkSansMedium(
                  text: '#OTP',
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
                      text: 'Verify Email',
                      textColor: const Color(0xff1C1D1F),
                      fontSize: 26.0),
                ],
              ),
              addTextWorkSansRegular(
                  text:
                      'Please enter 4-digit verification code that was send to your email address "cxxx@gmail.com"',
                  textColor: const Color(0xff474747),
                  fontSize: 16.0,
                  textAlign: TextAlign.center),
              buildSizeHeight(15),
              PinCodeTextField(
                controller: _pinPutController,
                appContext: context,
                length: 4,
                obscureText: false,
                textStyle: openMediumTextStyle().copyWith(
                    color: const Color(0xff1C1D1F),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.normal),
                animationType: AnimationType.fade,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                pinTheme: PinTheme(
                  borderWidth: 1.0,
                  borderRadius: BorderRadius.circular(5),
                  inactiveBorderWidth: 1.0,
                  selectedFillColor: const Color(0xffFEFAF6),
                  activeFillColor: const Color(0xffFEFAF6),
                  shape: PinCodeFieldShape.box,
                  fieldWidth: 76.0,
                  fieldHeight: 45.0,
                  activeColor: const Color(0xffD6C4B4),
                  selectedColor: const Color(0xffE49136),
                  inactiveFillColor: const Color(0xffFEFAF6),
                  inactiveColor: const Color(0xffD6C4B4),
                ),
                animationDuration: const Duration(milliseconds: 300),
                cursorColor: const Color(0xffD6C4B4),
                enableActiveFill: true,
                onCompleted: (v) {},
                onChanged: (value) {},
                beforeTextPaste: (text) {
                  return true;
                },
              ),
              CustomButton(
                child: addTextWorkSansRegular(
                    text: 'Verify',
                    textColor: const Color(0xffFFFFFF),
                    fontSize: 16.0),
                onPressed: () {
                  Get.to(const CreateAccountScreen());
                },
              ),
              buildSizeHeight(15),
              GestureDetector(
                onTap: () {
                  if (resendStatus) {
                    resendStatus = false;
                    _counter = 0;
                    init();
                  }
                },
                child: Container(
                    height: 30.0,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          resendStatus
                              ? 'assets/images/undo-button@3x.png'
                              : 'assets/images/timer (1)@3x.png',
                          alignment: Alignment.center,
                          height: 2.h,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          resendStatus
                              ? 'Resend Code?'
                              : 'Resend code in 00:${getFormattedTimer()}',
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Color(0xffE49136),
                          ),
                        ),
                      ],
                    )),
              ),
              buildSizeHeight(15),
              addTextWorkSansRegular(
                  text: 'OTP Expire Within: 49s',
                  textColor: Colors.black,
                  fontSize: 16),
            ],
          ),
        )
      ]),
    )));
  }
}
