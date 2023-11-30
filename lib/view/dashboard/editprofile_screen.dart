import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/dashboard/profile_screen.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';
import '../../Utility/utils.dart';
class Editprofile_Screen extends StatefulWidget {
  const Editprofile_Screen({Key? key}) : super(key: key);

  @override
  State<Editprofile_Screen> createState() => _Editprofile_ScreenState();
}

class _Editprofile_ScreenState extends State<Editprofile_Screen> {
  // DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: true,
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
              text: 'Edit Profile',
              textColor: const Color(0xff1C1D1F),
              fontSize: 19.0),
        ],
      ),
    ),
      body: Padding(
        padding:  EdgeInsets.all(20.sp),
        child:SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffFCF2F4),
                  borderRadius:  BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                       alignment: Alignment.bottomRight,
                         children: [
                           SizedBox(
                             height: 192.h,
                               child: Image.asset('assets/images/profileimage7@3x.png',height: 192.sp,)),
                           const Padding(
                             padding: EdgeInsets.all(12.0),
                             child: Icon(Icons.edit,color: Colors.white,),
                           )
                         ],
                      ),
                      buildSizeHeight(10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomButton(
                          color: const Color(0xffFEFAF6),
                          child: addTextWorkSansRegular(
                              text: 'View Profile ',
                              textColor: const Color(0xffE49136),
                              fontSize: 16.0),
                          onPressed: () {
                            Get.to(const ProfileScreen());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              buildSizeHeight(10),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/Group 4@3x.png',
                    height: 40.sp,
                  ),
                  addTextGeorgia(
                      text: 'Edit Profile Info',
                      textColor: const Color(0xff1C1D1F),
                      fontSize: 20.0),
                ],
              ),
              CustomTextField(
                textInputType: TextInputType.name,
                hintText: 'Full Name',
              ),
              buildSizeHeight(10),
              CustomTextField(
                suffixIcon: InkWell(
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now().subtract(const Duration(days: 365)),
                      lastDate: DateTime.now().add(const Duration(days: 365)),
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: Colors.orange),),
                            colorScheme: const ColorScheme.light(onPrimary: Colors.white, onBackground: Colors.white,),
                            datePickerTheme:  const DatePickerThemeData(
                              headerBackgroundColor: Colors.orange,
                              todayBackgroundColor: MaterialStatePropertyAll(Colors.orange),
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
                  child: const Icon(Icons.calendar_month,color: Color(
                      0xffAF5143),size: 25,),
                ),
                textInputType: TextInputType.datetime,
                hintText: 'DOB',
              ),
              buildSizeHeight(10),
              CustomTextField(
                textInputType: TextInputType.emailAddress,
                hintText: 'Email id',
              ),
              buildSizeHeight(10),
              CustomTextField(
                textInputType: TextInputType.number,
                hintText: 'Mobile Number',
              ),
              buildSizeHeight(15),
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
      ),
    ));
  }
}
