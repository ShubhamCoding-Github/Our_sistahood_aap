import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/Utility/utils.dart';
import 'package:our_sistahood_app/view/CategriesScreen/card_screen.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/mycoursedetail_screen.dart';
import 'package:our_sistahood_app/view/dashboard/editprofile_screen.dart';
import 'package:our_sistahood_app/view/dashboard/setting_screen.dart';
import 'package:our_sistahood_app/view/dashboard/wishlist_screen.dart';
import '../../Utility/custum_button.dart';
import '../Notification_Screen/notification_screen.dart';
import 'mycourses_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<bool> heart = [];
  @override
  void initState() {
    heart = List.filled(100, true);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffFFFFFF),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/Sistahood logo@3x.png',
                height: 40.sp,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 30.0,
                      child: InkWell(
                        child: Image.asset('assets/images/icons@3x.png',height: 22.sp),
                        onTap: () {
                          Get.to(const CardScreen());
                        },
                      )),
                  InkWell(
                    child: Image.asset(
                        'assets/images/2203538_alarm_bell_notification_ring_icon@3x.png',
                        height: 22.sp),
                    onTap: () {
                      Get.to(() => const NotificationView());
                    },
                  ),
                ],
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 95.h,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                child: Image.asset(
                                  'assets/images/profileimage7@3x.png',
                                  height: 95.sp,
                                ),
                              ),
                            ),
                            buildSizeWidth(5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                addTextGeorgia(
                                    text: 'Peter Parker',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 20.0),
                                buildSizeHeight(3),
                                addTextWorkSansMedium(
                                    text: 'peterparker0...@gmail.com',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 16.0),
                                buildSizeHeight(3),
                                addTextWorkSansMedium(
                                    text: '+61 - 0123 456 7890',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 17.0),
                                buildSizeHeight(3),
                                Row(
                                  children: [
                                    addTextWorkSansRegular(
                                        text: 'D.O.B.:',
                                        textColor: const Color(0xff474747),
                                        fontSize: 17.0),
                                    buildSizeWidth(10),
                                    addTextWorkSansMedium(
                                        text: '15-06-1992',
                                        textColor: const Color(0xff1C1D1F),
                                        fontSize: 17.0),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )),
                    buildSizeHeight(20),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            color: const Color(0xffFEFAF6),
                            child: addTextWorkSansRegular(
                                text: 'Edit Profile',
                                textColor: const Color(0xffE49136),
                                fontSize: 16.0),
                            onPressed: () {
                              Get.to(const Editprofile_Screen());
                            },
                          ),
                        ),
                        buildSizeWidth(10),
                        Expanded(
                          child: CustomButton(
                            color: const Color(0xffFEFAF6),
                            child: addTextWorkSansRegular(
                                text: 'Settings',
                                textColor: const Color(0xffE49136),
                                fontSize: 16.0),
                            onPressed: () {
                              Get.to(const SettingScreen());
                            },
                          ),
                        ),
                      ],
                    ),
                    buildSizeHeight(20),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 0.5.sp,
                                blurRadius: 5.sp)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/icons@3x.png',
                                      height: 22.sp,
                                    ),
                                    buildSizeWidth(10),
                                    addTextWorkSansMedium(
                                        text: 'My Cart',
                                        textColor: Color(0xff1C1D1F),
                                        fontSize: 18.0),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Get.to(const CardScreen());
                      },
                    ),
                    buildSizeHeight(20),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 0.5.sp,
                                blurRadius: 5.sp)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/heart_icon@3x.png',
                                      height: 36.sp,
                                    ),
                                    buildSizeWidth(5),
                                    addTextWorkSansMedium(
                                        text: 'Wishlist',
                                        textColor: const Color(0xff1C1D1F),
                                        fontSize: 18.0),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Get.to(const Wishlist_Screen());
                      },
                    ),
                    buildSizeHeight(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Group 4@3x.png',
                              height: 40.sp,
                            ),
                            addTextGeorgia(
                                text: 'My Courses',
                                textColor: const Color(0xff1C1D1F),
                                fontSize: 20.0),
                          ],
                        ),
                        InkWell(
                          child: addTextWorkSansRegular(
                              text: 'View All',
                              textColor: Color(0xffE49136),
                              fontSize: 15.0,
                              textDecoration: TextDecoration.underline),
                          onTap: () {
                            Get.to(const Mycourses_Screen());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 348.h,
                child: InkWell(
                  onTap: () {
                    Get.to(Mycoursedetail_Screen());
                  },
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 34.h,
                      width: 257.w,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 0.5.sp,
                                blurRadius: 5.sp)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(alignment: Alignment.topRight, children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  height: 190.h,
                                  width: double.infinity,
                                  child: Image.asset(
                                      'assets/images/Mask Group 8@3x.png',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Card(
                                        color: const Color(0xffAF5143),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: addTextWorkSansMedium(
                                              text: 'Art & Design',
                                              textColor:
                                                  const Color(0xffEDDAC5),
                                              fontSize: 13.sp),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Image.asset(
                                          heart[index]
                                              ? 'assets/images/211755_heart_icon@3x.png'
                                              : 'assets/images/heart_icon@3x.png',
                                          height: 40.sp,
                                        ),
                                        onTap: () {
                                          heart[index] = !heart[index];
                                          setState(() {});
                                        },
                                      ),
                                    ],
                                  ))
                            ]),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/icons@1x.png',
                                        height: 24.sp,
                                      ),
                                      buildSizeWidth(10),
                                      addTextWorkSansRegular(
                                          text: 'Roma Sehgal',
                                          textColor: const Color(0xff1C1D1F),
                                          fontSize: 16.sp)
                                    ],
                                  ),

                                  buildSizeHeight(10),
                                  addTextGeorgia(
                                      text:
                                          'Music Theory Learn New student & undamentals...',
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 17.sp,
                                      textAlign: TextAlign.start),
                                  buildSizeHeight(10),
                                  Container(
                                    width: 225.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(9.0),
                                        border: Border.all(
                                            color: const Color(0xffD6C4B4))),
                                    child: const LinearProgressIndicator(
                                      value: 0.03,
                                      backgroundColor: Color(0xffF9F2EB),
                                      color: Color(0xffE49136),
                                    ),
                                  ),
                                  buildSizeHeight(10),
                                  addTextWorkSansMedium(
                                      text: 'Start Course',
                                      textColor: const Color(0xffE49136),
                                      fontSize: 14.sp),
                                  // addTextWorkSansMedium(text: '10% Complete', textColor: Color(0xff3B2A27), fontSize:14.0)
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
