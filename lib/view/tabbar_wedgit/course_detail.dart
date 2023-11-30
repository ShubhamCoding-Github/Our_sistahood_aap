import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/CategriesScreen/card_screen.dart';
import 'package:our_sistahood_app/view/CategriesScreen/checkout_screen.dart';
import 'package:our_sistahood_app/view/dashboard/wishlist_screen.dart';
import 'package:our_sistahood_app/view/tabbar_wedgit/courcecontact_screen.dart';
import 'package:our_sistahood_app/view/tabbar_wedgit/description_screen.dart';
import 'package:our_sistahood_app/view/tabbar_wedgit/instructor_screen.dart';
import 'package:our_sistahood_app/view/tabbar_wedgit/keypoints_screen.dart';
import 'package:our_sistahood_app/view/tabbar_wedgit/ratings_screen.dart';
import 'package:our_sistahood_app/view/tabbar_wedgit/requirement_screen.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';
import '../Notification_Screen/notification_screen.dart';

class Course_Detail extends StatefulWidget {
  Course_Detail({Key? key}) : super(key: key);

  @override
  State<Course_Detail> createState() => _Course_DetailState();
}

class _Course_DetailState extends State<Course_Detail>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(vsync: this, length: 6);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffFCF2F4),
          title: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffE49136),
                      size: 20,
                    ),
                    onTap: () {
                      Get.back();
                    },
                  ),
                  buildSizeWidth(5),
                  addTextWorkSansMedium(
                      text: 'Course Detail',
                      textColor: const Color(0xff1C1D1F),
                      fontSize: 19.0),
                  const Spacer(),
                  SizedBox(
                      width: 30.0,
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/images/icons@3x.png',
                          height: 22.sp,
                        ),
                        onTap: () {
                          Get.to(const CardScreen());
                        },
                      )),
                  buildSizeWidth(10),
                  InkWell(
                    child: Image.asset(
                      'assets/images/2203538_alarm_bell_notification_ring_icon@3x.png',
                      height: 22.sp,
                    ),
                    onTap: () {
                      Get.to(() => const NotificationView());
                    },
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/images/211755_heart_icon@3x.png',
                      height: 35.sp,
                    ),
                    onTap: () {
                      Get.to(() => const Wishlist_Screen());
                    },
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/images/8665836_share_social_icon@3x.png',
                      height: 22.sp,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addTextWorkSansBold(
                        text:
                            'AWS Certified Security – Specialty SCS-C01 [2023]',
                        textColor: const Color(0xffE49136),
                        fontSize: 22.0),
                    buildSizeHeight(10),
                    addTextWorkSansRegular(
                        text:
                            'Gain knowledge to protect your AWS environment. Live Study Group Q&A!',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 17.0),
                    buildSizeHeight(10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Mask Group 54@3x.png',
                          height: 28.sp,
                        ),
                        InkWell(
                          child: Card(
                            color: const Color(0xffAF5143),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/XMLID_328_@3x.png',
                                    height: 14.sp,
                                  ),
                                  buildSizeWidth(5),
                                  addTextWorkSansMedium(
                                      text: '5.0 (18 ratings)',
                                      textColor: const Color(0xffEDDAC5),
                                      fontSize: 16.0),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            controller.animateTo(5);
                            setState(() {});
                          },
                        ),
                        buildSizeWidth(5),
                        addTextWorkSansMedium(
                            text: '20,112 students',
                            textColor: const Color(0xff3B2A27),
                            fontSize: 17.0),
                      ],
                    ),
                    buildSizeHeight(5),
                    InkWell(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/icons@1x.png',
                            height: 30.sp,
                          ),
                          buildSizeWidth(10),
                          addTextWorkSansMedium(
                              text: 'Created by:',
                              textColor: const Color(0xff3B2A27),
                              fontSize: 16.0),
                          buildSizeWidth(5),
                          addTextWorkSansMedium(
                              text: 'Peter Parker',
                              textColor: const Color(0xffE49136),
                              fontSize: 16.0),
                        ],
                      ),
                      onTap: () {
                        controller.animateTo(4);
                        setState(() {});
                      },
                    ),
                    buildSizeHeight(10),
                    addTextWorkSansRegular(
                        text: 'Updated on: June 2023',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 18.0),
                    buildSizeHeight(10),
                    addTextWorkSansRegular(
                        text: '68.5 total hours . Subtitles',
                        textColor: const Color(0xff686868),
                        fontSize: 15.0),
                    buildSizeHeight(10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: addTextWorkSansBold(
                              text: 'AUD',
                              textColor: const Color(0xffAF5143),
                              fontSize: 18.0),
                        ),
                        addTextWorkSansBold(
                            text: '400',
                            textColor: const Color(0xffAF5143),
                            fontSize: 28.0),
                        buildSizeWidth(10),
                        addTextWorkSansRegular(
                            text: 'AUD700',
                            textDecoration: TextDecoration.lineThrough,
                            textColor: const Color(0xff1C1D1F),
                            fontSize: 16.0),
                        buildSizeWidth(10),
                        addTextWorkSansRegular(
                            text: '80% off',
                            textColor: const Color(0xff1C1D1F),
                            fontSize: 18.0)
                      ],
                    ),
                    buildSizeHeight(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              child: addTextWorkSansRegular(
                                  text: 'Buy This Course',
                                  textColor: const Color(0xffFFFFFF),
                                  fontSize: 16.0),
                              onPressed: () {
                                Get.to(const CheckoutScreen());
                              },
                            ),
                          ),
                          buildSizeWidth(10),
                          Expanded(
                            child: CustomButton(
                              color: const Color(0xffFEFAF6),
                              child: addTextWorkSansRegular(
                                  text: 'Add to Cart',
                                  textColor: const Color(0xffE49136),
                                  fontSize: 16.0),
                              onPressed: () {
                                Get.to(const CardScreen());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            buildTabBar(),
            Expanded(
              child: TabBarView(
                  controller: controller, children: const [
                DescriptionScreen(),
                KeypointScreen(),
                Courcecontact_Screen(),
                Requirement_Screen(),
                InstructorScreen(),
                RatingsScreen(),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTabBar() {
    return Container(
      color: const Color(0xffFCF2F4),
      height: 33.sp,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TabBar(
          indicatorColor: Colors.orange,
          isScrollable: true,
          dividerColor: Colors.white,
          controller: controller,
          labelPadding: EdgeInsets.zero,
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xffE49136),
                width: 1.0,
              ),
            ),
          ),
          onTap: (index) {
            print(index);

            setState(() {});
          },
          labelColor: const Color(0xffE49136),
          labelStyle: TextStyle(
              color: const Color(0xffE49136),
              fontSize: 18.sp,
              fontFamily: 'WorkSansRegular'),
          unselectedLabelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontFamily: 'WorkSansRegular'),
          unselectedLabelColor: const Color(0xff1C1D1F),
          tabs: const [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Tab(
                text: 'Description',
              ),
            ),
            // buildSizeWidth(20),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Tab(
                text: 'Key Points',
              ),
            ),
            // buildSizeWidth(20),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Tab(
                text: 'Course Content',
              ),
            ),
            // buildSizeWidth(20),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Tab(
                text: 'Requirement',
              ),
            ),
            // buildSizeWidth(20),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Tab(
                text: 'Instructor',
              ),
            ),
            // buildSizeWidth(20),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Tab(
                text: 'Ratings',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
