import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/dashboard/dashboard.dart';
import 'package:our_sistahood_app/view/loginscreen/createaccountscreen.dart';
import 'package:our_sistahood_app/view/loginscreen/forgotpasswordscreen.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';
import '../../Utility/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  bool _validateEmail(String email) {
    // Basic email validation regex
    return RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(email);
  }

  bool _passVisibility = true;

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
              ),
            ],
          ),
          Center(
            child: Image.asset(
              'assets/images/Sistahood logo@3x.png',
              height: 70.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.sp),
            child: Column(
              children: [
                addTextWorkSansMedium(
                    text: '#Login',
                    textColor: const Color(0xff3B2A27),
                    fontSize: 15.0),
                buildSizeHeight(5),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Group 4@3x.png',
                      height: 60.sp,
                    ),
                    addTextGeorgia(
                        text: 'Account Sign in',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 26.0),
                  ],
                ),
                addTextWorkSansRegular(
                    text:
                        'Please enter your email address or password for better reach. after login you can buy the course',
                    textColor: const Color(0xff474747),
                    fontSize: 16.0,
                    textAlign: TextAlign.center),
                buildSizeHeight(30),
                CustomTextField(
                  controller: _emailController,
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Email id',
                  errorText: _validateEmail(_emailController.text)
                      ? null
                      : 'Invalid email format',
                  onChanged: (value) {
                    setState(
                        () {}); // This will trigger a rebuild to update the error message
                  },
                ),
                buildSizeHeight(20),
                CustomTextField(
                  obscureText: _passVisibility,
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passVisibility ? Icons.visibility_off : Icons.visibility,
                      color: const Color(0xff3B2A27),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          _passVisibility = !_passVisibility;
                        },
                      );
                    },
                  ),
                  hintText: 'Password',
                  suffixIconPadding: EdgeInsets.zero,
                ),
                buildSizeHeight(20),
                CustomButton(
                  child: addTextWorkSansRegular(
                      text: 'Login',
                      textColor: const Color(0xffFFFFFF),
                      fontSize: 16.0),
                  onPressed: () {
                    Get.to(const Dashboard());
                  },
                ),
                buildSizeHeight(20),
                InkWell(
                  child: addTextWorkSansRegular(
                      text: 'Forgot Password?',
                      textColor: const Color(0xffE49136),
                      fontSize: 16.0),
                  onTap: () {
                    Get.to(const ForgotPasswordScreen());
                  },
                ),
                buildSizeHeight(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    addTextWorkSansRegular(
                        text: 'if you don\'t have an account?',
                        textColor: const Color(0xff474747),
                        fontSize: 16.0),
                    buildSizeWidth(5),
                    InkWell(
                      child: addTextWorkSansRegular(
                          text: 'Sign up',
                          textColor: const Color(0xffE49136),
                          fontSize: 16.0),
                      onTap: () {
                        Get.to(const CreateAccountScreen());
                      },
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
