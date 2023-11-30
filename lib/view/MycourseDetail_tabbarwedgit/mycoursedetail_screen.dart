import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/assignment_screen.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/overview_screen.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/question_answer_screen.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/reviews.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/submitedassignment_screen.dart';
import 'package:our_sistahood_app/view/dashboard/wishlist_screen.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';
import 'quiz_screen.dart';

class Mycoursedetail_Screen extends StatefulWidget {
  Mycoursedetail_Screen({Key? key}) : super(key: key);

  @override
  State<Mycoursedetail_Screen> createState() => _Mycoursedetail_ScreenState();
}

class _Mycoursedetail_ScreenState extends State<Mycoursedetail_Screen>
    with SingleTickerProviderStateMixin {
  int selected = 0;
  int tapselected = 0;
  bool isintroduction = false;
  List<Map<String, dynamic>> introductionlist = [
    {
      "title": '1. Introduction',
      "sub title": '02:00',
      "icon": 'assets/images/monitor_icon@3x.png',
    },
    {
      "title": '2. Security Specialty Exam Overview',
      "sub title": '00:09',
      "icon": 'assets/images/paper_icon@3x.png',
    },
    {
      "title": 'Quiz 1: Nouns Quiz',
      "sub title": '00:04',
      "icon": 'assets/images/paper_icon@3x.png',
    },
  ];
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      addTextWorkSansMedium(
                          text: 'Course Detail',
                          textColor: const Color(0xff1C1D1F),
                          fontSize: 20.0),
                    ],
                  ),
                  GestureDetector(
                      child: const Icon(
                    Icons.search,
                    color: Color(0xffAF5143),
                    size: 32,
                  )),
                  SizedBox(
                    height: 23.h,
                    width: 23.w,
                    child: const CircularProgressIndicator(
                      color: Color(0xffFAEBDA),
                      strokeWidth: 5,
                      backgroundColor: Color(0xffE49136),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xffE49136),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/8665308_download_arrow_icon@3x.png',
                    height: 22.sp,
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/images/211755_heart_icon@3x.png',
                      height: 35.sp,
                    ),
                    onTap: () {
                      Get.to(const Wishlist_Screen());
                    },
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/images/8665836_share_social_icon@3x.png',
                      scale: 3.sp,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (tapselected == 0) ...[
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 240.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/two-business-woman-cafe@3x.png'))),
                  ),
                  Image.asset(
                    'assets/images/Group 61@3x.png',
                    height: 41.sp,
                  ),
                ],
              ),
            ] else if (tapselected == 1) ...[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addTextGeorgia(
                        text: 'FREE resources to learn English',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 16.0),
                    buildSizeHeight(10),
                    addTextWorkSansBold(
                        text: 'What you\'ll learn',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 16.0),
                    buildSizeHeight(10),
                    addTextWorkSansRegular(
                        text:
                            'Lorem Ipsum is simply dummy text of the standard dummy text ever since the 1500s type specimen book.',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 15.0,
                        textAlign: TextAlign.start),
                    buildSizeHeight(10),
                    addTextWorkSansBold(
                        text: 'Why do we use it?',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 16.0),
                    buildSizeHeight(10),
                    addTextWorkSansRegular(
                        text:
                            'Lorem Ipsum is simply dummy text of the standard dummy text ever since the 1500s type specimen book.',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 15.0,
                        textAlign: TextAlign.start),
                  ],
                ),
              ),
            ] else if (tapselected == 2) ...[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/OBJECTS@3x.png',
                      height: 109.sp,
                    ),
                    buildSizeHeight(10),
                    addTextGeorgia(
                        text: 'Nouns Quiz',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 18.0),
                    buildSizeHeight(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          btnWidth: 132.w,
                          btnHeight: 45.h,
                          child: addTextWorkSansRegular(
                              text: 'Start Quiz',
                              textColor: const Color(0xffFFFFFF),
                              fontSize: 16.0),
                          onPressed: () {
                            Get.to(const Quiz_Screen());
                          },
                        ),
                        buildSizeWidth(10),
                        CustomButton(
                          btnWidth: 132.w,
                          btnHeight: 45.h,
                          color: const Color(0xffFEFAF6),
                          child: addTextWorkSansRegular(
                              text: 'Skip Quiz',
                              textColor: const Color(0xffE49136),
                              fontSize: 16.0),
                          onPressed: () {
                            // controller.animateTo(0);
                            // setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
            buildTabBar(),
            Expanded(
              child: TabBarView(
                  controller: controller,
                  children: [
                    Course_Contact(),
                    const Overview_Screen(),
                    Question_Answer_Screen(),
                    const Assignment_Screen(),
                    const Submitedassignment_Screen(),
                    const Reviews(),
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
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            buildSizeHeight(10),
            addTextGeorgia(
                text: 'AWS Certified Security – Specialty SCS-C01 [2023]',
                textColor: const Color(0xff1C1D1F),
                fontSize: 17.0,
                textAlign: TextAlign.start),
            TabBar(
              isScrollable: true,
              dividerColor: Colors.white,
              controller: controller,
              labelPadding: EdgeInsets.zero,
                indicatorPadding: const EdgeInsets.symmetric(vertical: 10),
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
              },
              labelColor: const Color(0xffE49136),
              labelStyle: TextStyle(
                  color: const Color(0xffE49136),
                  fontSize: 18.sp,
                  fontFamily: 'WorkSansMedium'),
              unselectedLabelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontFamily: 'WorkSansMedium'),
              unselectedLabelColor: const Color(0xff1C1D1F),
              tabs: const [
                Tab(
                  text: 'Course Content',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Tab(
                    text: 'Overview',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Tab(
                    text: 'Q&A',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Tab(
                    text: 'Assignment',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Tab(
                    text: 'Submited Assignments',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Tab(
                    text: 'Reviews',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Course_Contact() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5.sp,
                          blurRadius: 5.sp)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          addTextGeorgia(
                              text: 'Section 1: Introduction',
                              textColor: const Color(0xff1C1D1F),
                              fontSize: 16.0),
                          InkWell(
                            child: Image.asset(
                              isintroduction
                                  ? 'assets/images/Group 64@3x.png'
                                  : 'assets/images/downarrow74@3x.png',
                              height: 21.sp,
                            ),
                            onTap: () {
                              setState(() {
                                isintroduction = !isintroduction;
                              });
                            },
                          ),
                        ],
                      ),
                      addTextWorkSansRegular(
                          text: '0/3 . 5min',
                          textColor: const Color(0xff686868),
                          fontSize: 13.0),
                      buildSizeHeight(10),
                      Visibility(
                        child: buildExpandableSectoin1(),
                        visible: isintroduction,
                      ),
                    ],
                  ),
                )),
            buildSizeHeight(10),
            Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5.sp,
                          blurRadius: 5.sp)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          addTextGeorgia(
                              text: 'Section 2: Parts of Speech',
                              textColor: const Color(0xff1C1D1F),
                              fontSize: 16.0),
                          InkWell(
                            child: Image.asset(
                              isintroduction
                                  ? 'assets/images/Group 64@3x.png'
                                  : 'assets/images/downarrow74@3x.png',
                              height: 21.sp,
                            ),
                            onTap: () {
                              setState(() {
                                // isintroduction = !isintroduction;
                              });
                            },
                          ),
                        ],
                      ),
                      addTextWorkSansRegular(
                          text: '0/3 . 5min',
                          textColor: const Color(0xff686868),
                          fontSize: 13.0),
                      buildSizeHeight(10),
                      // Visibility(
                      //   child: buildExpandableSectoin1(),
                      //   visible: isintroduction,
                      // ),
                    ],
                  ),
                )),
            buildSizeHeight(10),
            Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5.sp,
                          blurRadius: 5.sp)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          addTextGeorgia(
                              text: 'Section 3: Parts of Speech',
                              textColor: const Color(0xff1C1D1F),
                              fontSize: 16.0),
                          InkWell(
                            child: Image.asset(
                              isintroduction
                                  ? 'assets/images/Group 64@3x.png'
                                  : 'assets/images/downarrow74@3x.png',
                              height: 21.sp,
                            ),
                            onTap: () {
                              setState(() {
                                // isintroduction = !isintroduction;
                              });
                            },
                          ),
                        ],
                      ),
                      addTextWorkSansRegular(
                          text: '0/3 . 5min',
                          textColor: const Color(0xff686868),
                          fontSize: 13.0),
                      buildSizeHeight(10),
                      // Visibility(
                      //   child: buildExpandableSectoin1(),
                      //   visible: isintroduction,
                      // ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  buildExpandableSectoin1() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: introductionlist.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffFAEBDA)),
                      color: const Color(0xffFEFAF6),
                      borderRadius: BorderRadiusDirectional.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Checkbox(
                              visualDensity: const VisualDensity(
                                horizontal: -4,
                                vertical: -4,
                              ),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              activeColor: const Color(0xffE49136),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              side: MaterialStateBorderSide.resolveWith(
                                (states) => const BorderSide(
                                    width: 1.0, color: Color(0xffD6C4B4)),
                              ),
                              value: selected == index,
                              onChanged: ((value) {
                                selected = index;
                                // introductionlist[index]['value'] = !introductionlist[index]['value'];
                                setState(() {});
                              }),
                            ),
                            buildSizeWidth(10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 225.w,
                                  child: addTextWorkSansMedium(
                                      text: introductionlist[index]['title'],
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 15.0,
                                      textAlign: TextAlign.start),
                                ),
                                addTextWorkSansRegular(
                                    text: introductionlist[index]['sub title'],
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 15.0,
                                    textAlign: TextAlign.start),
                              ],
                            ),
                          ],
                        ),
                        Image.asset(
                          introductionlist[index]['icon'],
                          height: 20.sp,
                        )
                      ]
                    ),
                  ),
                ),
                onTap: () {
                  tapselected = index;
                  setState(() {});
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
