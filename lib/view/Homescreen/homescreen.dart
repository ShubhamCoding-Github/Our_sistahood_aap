import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/CategriesScreen/allcoursesgrid_screen.dart';
import 'package:our_sistahood_app/view/CategriesScreen/card_screen.dart';
import 'package:our_sistahood_app/view/CategriesScreen/categriesscreen.dart';
import 'package:our_sistahood_app/view/tabbar_wedgit/course_detail.dart';
import 'package:badges/badges.dart' as custom_badges;
import '../../Utility/utils.dart';
import '../Notification_Screen/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> heart = [];
  List<bool> favrate = [];

  @override
  void initState() {
    heart = List.filled(100, true);
    favrate = List.filled(100, true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.h),
            child: AppBar(
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
                      InkWell(
                        child:Badge(

                        child: Image.asset('assets/images/icons@3x.png', height: 22.sp)),
                        onTap: () {
                          Get.to(const CardScreen());
                        },
                      ),
                      buildSizeWidth(10),
                      InkWell(
                        child:custom_badges.Badge(
                          badgeContent: const Text('3'),
                          child: Image.asset(
                            'assets/images/2203538_alarm_bell_notification_ring_icon@3x.png',
                            height: 22.sp,
                          ),
                        ),
                        onTap: () {
                          Get.to(() => const NotificationView());
                        },
                      )
                    ],
                  ),
                ],
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset('assets/images/Mask Group 83@3x.png'),
                  Padding(
                    padding: EdgeInsets.all(25.sp),
                    child: Container(
                      width: 181.h,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(alignment: Alignment.center, children: [
                              Image.asset(
                                'assets/images/Group 4@3x.png',
                                height: 40.sp,
                              ),
                              addTextGeorgia(
                                  text: 'Online Education',
                                  textColor: const Color(0xff1C1D1F),
                                  fontSize: 12.0),
                            ]),
                            addTextWorkSansBold(
                                text: 'Feel Likes Real\nClassroom',
                                textColor: const Color(0xffE49136),
                                fontSize: 18.0,
                                textAlign: TextAlign.start)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      Image.asset(
                        'assets/images/Group 4@3x.png',
                        height: 60.sp,
                      ),
                      addTextGeorgia(
                          text: 'Popular Subjects',
                          textColor: const Color(0xff1C1D1F),
                          fontSize: 20.sp),
                    ]),
                    InkWell(
                      child: addTextWorkSansRegular(
                          textDecoration: TextDecoration.underline,
                          text: 'View All',
                          textColor: const Color(0xffE49136),
                          fontSize: 15.sp),
                      onTap: () {
                        Get.to(const Categriesscreen());
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SizedBox(
                  height: 110.h,
                  child: InkWell(
                    onTap: () {
                      Get.to(const Allcoursesgridscreen());
                    },
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(12),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            child: Container(
                              width: 100.w,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/Group 7139@3x.png',
                                    height: 40.sp,
                                  ),
                                  addTextWorkSansMedium(
                                      text: 'Art &Design',
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 14.0,
                                      textAlign: TextAlign.center),
                                  addTextWorkSansBold(
                                      text: '10',
                                      textColor: const Color(0xffAF5143),
                                      fontSize: 14.0)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              buildSizeHeight(10),
              Container(
                color: const Color(0xffFCF2F4),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(alignment: Alignment.center, children: [
                            Image.asset(
                              'assets/images/Group 4@3x.png',
                              height: 50.sp,
                            ),
                            addTextGeorgia(
                                text: 'Our Courses',
                                textColor: const Color(0xff1C1D1F),
                                fontSize: 20.0),
                          ]),
                          InkWell(
                            child: addTextWorkSansRegular(
                                textDecoration: TextDecoration.underline,
                                text: 'View All',
                                textColor: const Color(0xffE49136),
                                fontSize: 15.0),
                            onTap: () {
                              Get.to(const Allcoursesgridscreen());
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: SizedBox(
                        height: 348.h,
                        child: InkWell(
                          onTap: () {
                            Get.to(Course_Detail());
                          },
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 20,
                            itemBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 5.h),
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
                                    Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: SizedBox(
                                              height: 190
                                                  .h, // Set a fixed height for the image
                                              width: double.infinity,
                                              child: Image.asset(
                                                  'assets/images/Mask Group 8@3x.png',
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Card(
                                                    color:
                                                        const Color(0xffAF5143),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: addTextWorkSansMedium(
                                                          text: 'Art & Design',
                                                          textColor:
                                                              const Color(
                                                                  0xffEDDAC5),
                                                          fontSize: 13.0),
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
                                                      heart[index] =
                                                          !heart[index];
                                                      setState(() {});
                                                    },
                                                  )
                                                ],
                                              ))
                                        ]),
                                    buildSizeHeight(10),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/icons@1x.png',
                                            height: 24.sp,
                                          ),
                                          buildSizeWidth(5),
                                          addTextWorkSansRegular(
                                              text: 'Roma Sehgal',
                                              textColor:
                                                  const Color(0xff1C1D1F),
                                              fontSize: 16.sp)
                                        ],
                                      ),
                                    ),
                                    buildSizeHeight(10),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: addTextGeorgia(
                                          text:
                                              'Music Theory Learn New student & undamentals...',
                                          textColor: const Color(0xff1C1D1F),
                                          fontSize: 17.sp,
                                          textAlign: TextAlign.start),
                                    ),
                                    buildSizeHeight(10),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: addTextWorkSansBold(
                                                text: 'AUD',
                                                textColor:
                                                    const Color(0xffAF5143),
                                                fontSize: 14.sp),
                                          ),
                                          addTextWorkSansBold(
                                              text: '500',
                                              textColor:
                                                  const Color(0xffAF5143),
                                              fontSize: 24.sp),
                                          const Spacer(),
                                          Image.asset(
                                            'assets/images/Mask Group 54@3x.png',
                                            height: 26.sp,
                                          ),
                                          Card(
                                            color: const Color(0xffAF5143),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    'assets/images/XMLID_328_@3x.png',
                                                    height: 12.sp,
                                                  ),
                                                  buildSizeWidth(5),
                                                  addTextWorkSansMedium(
                                                      text: '5.0 (15)',
                                                      textColor: const Color(
                                                          0xffEDDAC5),
                                                      fontSize: 14.sp),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              buildSizeHeight(10),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(alignment: Alignment.center, children: [
                          Image.asset(
                            'assets/images/Group 4@3x.png',
                            height: 50.sp,
                          ),
                          addTextGeorgia(
                              text: 'Students Are Viewing',
                              textColor: const Color(0xff1C1D1F),
                              fontSize: 20.0),
                        ]),
                        InkWell(
                          child: addTextWorkSansRegular(
                              textDecoration: TextDecoration.underline,
                              text: 'View All',
                              textColor: const Color(0xffE49136),
                              fontSize: 15.0),
                          onTap: () {
                            Get.to(const Allcoursesgridscreen());
                          },
                        ),
                      ],
                    ),
                  ),
                  buildSizeHeight(10),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, bottom: 20.sp),
                    child: SizedBox(
                      height: 342.h,
                      child: InkWell(
                        onTap: () {
                          Get.to(Course_Detail());
                        },
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          itemBuilder: (context, index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Container(
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
                                  Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Card(
                                                  color:
                                                      const Color(0xffAF5143),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child:
                                                        addTextWorkSansMedium(
                                                            text: 'Python',
                                                            textColor:
                                                                const Color(
                                                                    0xffEDDAC5),
                                                            fontSize: 13.0),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  child: Image.asset(
                                                    favrate[index]
                                                        ? 'assets/images/211755_heart_icon@3x.png'
                                                        : 'assets/images/heart_icon@3x.png',
                                                    height: 40.sp,
                                                  ),
                                                  onTap: () {
                                                    favrate[index] =
                                                        !favrate[index];
                                                    setState(() {});
                                                  },
                                                )
                                              ],
                                            ))
                                      ]),
                                  buildSizeHeight(10),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/icons@1x.png',
                                          height: 24.sp,
                                        ),
                                        buildSizeWidth(5),
                                        addTextWorkSansRegular(
                                            text: 'Shahnaz Gill',
                                            textColor: const Color(0xff1C1D1F),
                                            fontSize: 16.0)
                                      ],
                                    ),
                                  ),
                                  buildSizeHeight(10),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.sp, right: 20.sp),
                                    child: addTextGeorgia(
                                        text:
                                            'Strategy law and Organization Foundation',
                                        textColor: const Color(0xff1C1D1F),
                                        fontSize: 17.sp,
                                        textAlign: TextAlign.start),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.sp),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 5.sp, left: 10.sp),
                                          child: addTextWorkSansBold(
                                              text: 'AUD',
                                              textColor:
                                                  const Color(0xffAF5143),
                                              fontSize: 14.0),
                                        ),
                                        addTextWorkSansBold(
                                            text: '400',
                                            textColor: const Color(0xffAF5143),
                                            fontSize: 24.0),
                                        const Spacer(),
                                        Image.asset(
                                          'assets/images/Mask Group 54@3x.png',
                                          height: 26.sp,
                                        ),
                                        Card(
                                          color: const Color(0xffAF5143),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/XMLID_328_@3x.png',
                                                  height: 12.sp,
                                                ),
                                                buildSizeWidth(5),
                                                addTextWorkSansMedium(
                                                    text: '5.0 (15)',
                                                    textColor:
                                                        const Color(0xffEDDAC5),
                                                    fontSize: 14.sp),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
