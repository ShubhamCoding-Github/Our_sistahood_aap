import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/dashboard/dashboard.dart';
import 'package:our_sistahood_app/view/loginscreen/loginscreen.dart';
import 'package:our_sistahood_app/view/loginscreen/verifyemailscreen.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';
import '../../Utility/utils.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  // DateTime today = DateTime.now();
  bool _checkbox = false;
  bool passwordVisible = true;
  bool password = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp, bottom: 20.sp),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Sistahood logo@3x.png',
                  height: 70.sp,
                ),
                addTextWorkSansMedium(
                    text: '#Sign Up',
                    textColor: const Color(0xff3B2A27),
                    fontSize: 18.0),
                buildSizeHeight(10),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Group 4@3x.png',
                      height: 60.sp,
                    ),
                    addTextGeorgia(
                        text: 'Create New Account',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 26.0),
                  ],
                ),
                buildSizeHeight(15),
                CustomTextField(
                  textInputType: TextInputType.name,
                  hintText: 'Full Name',
                ),
                buildSizeHeight(15),
                CustomTextField(
                  textInputType: TextInputType.number,
                  hintText: 'DOB',
                  suffixIcon: InkWell(
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate:
                            DateTime.now().subtract(const Duration(days: 365)),
                        lastDate: DateTime.now().add(const Duration(days: 365)),
                        builder: (BuildContext context, Widget? child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.orange),
                              ),
                              colorScheme: const ColorScheme.light(
                                onPrimary: Colors.white,
                                onBackground: Colors.white,
                              ),
                              datePickerTheme: const DatePickerThemeData(
                                headerBackgroundColor: Colors.orange,
                                rangeSelectionBackgroundColor: Colors.orange,
                                todayBorder: BorderSide(color: Colors.orange),
                                todayBackgroundColor:
                                    MaterialStatePropertyAll(Colors.orange),
                                backgroundColor: Colors.white,
                                headerForegroundColor: Colors.white,
                                surfaceTintColor: Colors.white,
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );
                    },
                    child: const Icon(
                      Icons.calendar_month,
                      color: Color(0xffAF5143),
                      size: 25,
                    ),
                  ),
                ),
                buildSizeHeight(15),
                CustomTextField(
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Email id',
                  suffixIcon: InkWell(
                    onTap: () {
                      Get.to(const VerifyEmailScreen());
                    },
                    child: addTextWorkSansRegular(
                        text: 'Verify',
                        textColor: const Color(0xffE49136),
                        fontSize: 16.0),
                  ),
                ),
                buildSizeHeight(15),
                CustomTextField(
                  textInputType: TextInputType.number,
                  hintText: 'Mobile Number',
                ),
                buildSizeHeight(15),
                CustomTextField(
                  obscureText: passwordVisible,
                  textInputType: TextInputType.visiblePassword,
                  hintText: 'Password',
                  suffixIconPadding: EdgeInsets.zero,
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
                      color: const Color(0xff3B2A27),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                ),
                buildSizeHeight(15),
                CustomTextField(
                  obscureText: password,
                  textInputType: TextInputType.visiblePassword,
                  hintText: 'Confirm Password',
                  suffixIconPadding: EdgeInsets.zero,
                  suffixIcon: IconButton(
                    icon: Icon(
                      password ? Icons.visibility : Icons.visibility_off,
                      color: const Color(0xff3B2A27),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          password = !password;
                        },
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                      ),
                      activeColor: const Color(0xffE49136),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) => const BorderSide(
                            width: 1.0, color: Color(0xffD6C4B4)),
                      ),
                      value: _checkbox,
                      onChanged: (value) {
                        setState(() {
                          _checkbox = !_checkbox;
                        });
                      },
                    ),
                    addTextWorkSansRegular(
                        text: 'Accept',
                        textColor: const Color(0xff474747),
                        fontSize: 16.0),
                    addTextWorkSansRegular(
                        text: ' Terms & Conditions.',
                        textColor: const Color(0xffE49136),
                        fontSize: 16.0),
                  ],
                ),
                buildSizeHeight(5),
                CustomButton(
                  child: addTextWorkSansRegular(
                      text: 'Sign Up',
                      textColor: const Color(0xffFFFFFF),
                      fontSize: 16.0),
                  onPressed: () {
                    Get.to(const Dashboard());
                  },
                ),
                buildSizeHeight(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    addTextWorkSansRegular(
                        text: 'if you already have an account?',
                        textColor: const Color(0xff474747),
                        fontSize: 16.0),
                    buildSizeWidth(5),
                    InkWell(
                      child: addTextWorkSansRegular(
                          text: 'Login',
                          textColor: const Color(0xffE49136),
                          fontSize: 16),
                      onTap: () {
                        Get.to(const LoginScreen());
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
