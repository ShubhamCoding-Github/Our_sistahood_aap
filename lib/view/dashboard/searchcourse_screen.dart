import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/CategriesScreen/card_screen.dart';
import 'package:our_sistahood_app/view/tabbar_wedgit/course_detail.dart';

import '../../Utility/custum_textfield.dart';
import '../../Utility/utils.dart';
import '../Notification_Screen/notification_screen.dart';

class SearchCourseScreen extends StatefulWidget {
  const SearchCourseScreen({Key? key}) : super(key: key);

  @override
  State<SearchCourseScreen> createState() => _SearchCourseScreenState();
}

class _SearchCourseScreenState extends State<SearchCourseScreen> {
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
          toolbarHeight: 110,
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffFCF2F4),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/Sistahood logo@3x.png',
                      height: 30.sp,
                    ),
                    Row(
                      children: [
                        InkWell(
                          child: Image.asset(
                            'assets/images/icons@3x.png',
                            height: 22.sp,
                          ),
                          onTap: () {
                            Get.to(const CardScreen());
                          },
                        ),
                        buildSizeWidth(5),
                        InkWell(
                          child: Image.asset(
                              'assets/images/2203538_alarm_bell_notification_ring_icon@3x.png',
                             height: 22.sp),
                          onTap: () {
                            Get.to(() => const NotificationView());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                buildSizeHeight(5),
                CustomTextField(
                  textInputType: TextInputType.visiblePassword,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Color(0xffE49136),
                      size: 25,
                    ),
                  ),
                  hintText: 'Software Course',
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(Course_Detail());
                  },
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
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
                                      height: 227.h,
                                      child: Image.asset(
                                          'assets/images/Mask Group 9@3x.png',fit:BoxFit.fill))),
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
                                              fontSize: 13.0),
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
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
                              ),
                            ]),
                            buildSizeHeight(5),
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
                                      text: 'Roma Segal',
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 16.0)
                                ],
                              ),
                            ),
                            buildSizeHeight(5),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: addTextGeorgia(
                                  text:
                                      'Music Theory Learn New student & undamentals...',
                                  textColor: const Color(0xff1C1D1F),
                                  fontSize: 17.0,
                                  textAlign: TextAlign.start),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 2),
                                        child: addTextWorkSansBold(
                                            text: 'AUD',
                                            textColor: const Color(0xffAF5143),
                                            fontSize: 14.0),
                                      ),
                                      addTextWorkSansBold(
                                          text: '500',
                                          textColor: const Color(0xffAF5143),
                                          fontSize: 24.0),
                                    ],
                                  ),
                                  Row(
                                    children: [
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
                                                  fontSize: 14.0),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
