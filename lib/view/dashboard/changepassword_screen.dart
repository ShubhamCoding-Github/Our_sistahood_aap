import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/dashboard/profile_screen.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';
import '../../Utility/utils.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool passwordVisible = true;
  bool password = true;
  bool hide = true;

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
                text: 'Change Password',
                textColor: const Color(0xff1C1D1F),
                fontSize: 19.0),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          children: [
            CustomTextField(
              obscureText: passwordVisible,
              textInputType: TextInputType.visiblePassword,
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
              hintText: 'Current Password',
              suffixIconPadding: EdgeInsets.zero,
            ),
            buildSizeHeight(15),
            CustomTextField(
              obscureText: password,
              textInputType: TextInputType.visiblePassword,
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
              hintText: 'New Password',
              suffixIconPadding: EdgeInsets.zero,
            ),
            buildSizeHeight(15),
            CustomTextField(
              obscureText: hide,
              textInputType: TextInputType.visiblePassword,
              suffixIcon: IconButton(
                icon: Icon(
                  hide ? Icons.visibility : Icons.visibility_off,
                  color: const Color(0xff3B2A27),
                ),
                onPressed: () {
                  setState(
                    () {
                      hide = !hide;
                    },
                  );
                },
              ),
              hintText: 'Re-enterNewPassword',
              suffixIconPadding: EdgeInsets.zero,
            ),
            buildSizeHeight(20),
            CustomButton(
              child: addTextWorkSansRegular(
                  text: 'Save Changes',
                  textColor: const Color(0xffFFFFFF),
                  fontSize: 16.0),
              onPressed: () {
                Get.to(const ProfileScreen());
              },
            ),
          ],
        ),
      ),
    ));
  }
}
