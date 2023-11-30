import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/tabbar_wedgit/course_detail.dart';

import '../../Utility/utils.dart';

class FavcourseList extends StatefulWidget {
  const FavcourseList({Key? key}) : super(key: key);

  @override
  State<FavcourseList> createState() => _FavcourseListState();
}

class _FavcourseListState extends State<FavcourseList> {
  List<bool> heart = [];
  @override
  void initState() {
    heart = List.filled(10, true);
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
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 20,right: 20),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0.5.sp,
                        blurRadius: 5.sp)
                  ],
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/Mask  8@3x.png',
                    height: 156.sp,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              )
                            ],
                          ),
                          addTextGeorgia(
                              text:
                                  'Music Theory Learn New student & funda...',
                              textColor: Color(0xff1C1D1F),
                              fontSize: 16.0),
                          buildSizeHeight(5),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/icons@1x.png',
                                height: 22.sp,
                              ),
                              buildSizeWidth(5),
                              addTextWorkSansRegular(
                                  text: 'Roma Sehgal',
                                  textColor: Color(0xff1C1D1F),
                                  fontSize: 14.0),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 2),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
// Column(
// children: [
// addTextGeorgia(text: 'Music Theory Learn New student & funda...', textColor:Color(0xff1C1D1F), fontSize: 16.0)
// ],
// )
