
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/tabbar_wedgit/course_detail.dart';

import '../../Utility/utils.dart';

class CourseList extends StatefulWidget {
  const CourseList({Key? key}) : super(key: key);

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  List<bool> heart = [];
  @override
  void initState() {
    heart = List.filled(100, true);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(Course_Detail());
      },
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 20,
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
                  Image.asset('assets/images/Mask Group 9@3x.png'),
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
                                  textColor: const Color(0xffEDDAC5),
                                  fontSize: 13.0),
                            ),
                          ),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  GestureDetector(
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
                    )
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
                          text: 'Roma Sehgal',
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:5),
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
                                      textColor: const Color(0xffEDDAC5),
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
    );
  }
}
