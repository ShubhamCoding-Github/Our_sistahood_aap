import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';
import '../../Utility/utils.dart';

class Allreviews_Screen extends StatelessWidget {
  const Allreviews_Screen({Key? key}) : super(key: key);

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
                  text: 'Reviews',
                  textColor: Color(0xff1C1D1F),
                  fontSize: 17.0),
              const Spacer(),
              SizedBox(
                  width: 20.0,
                  child:
                      Image.asset('assets/images/icons@3x.png', scale: 3.sp)),
              buildSizeWidth(10),
              Image.asset(
                  'assets/images/2203538_alarm_bell_notification_ring_icon@3x.png',
                  scale: 3.2.sp),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.sp),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                    text: 'Ratings',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 20.0),
                              ],
                            ),
                            Card(
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
                          ],
                        ),
                        buildSizeHeight(10),
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFCF2F4),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                child: Image.asset(
                                                    'assets/images/Mask Group 25@3x.png')),
                                            buildSizeWidth(10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                addTextWorkSansMedium(
                                                    text: 'Jorge Luis D.',
                                                    textColor:
                                                        Color(0xff1C1D1F),
                                                    fontSize: 16.0),
                                                Row(
                                                  children: [
                                                    RatingBar.builder(
                                                      itemSize: 20,
                                                      initialRating: 3,
                                                      minRating: 1,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemPadding:
                                                          const EdgeInsets
                                                                  .symmetric(
                                                              horizontal: 1.0),
                                                      itemBuilder:
                                                          (context, _) =>
                                                              const Icon(
                                                        Icons.star,
                                                        color:
                                                            Color(0xffE49136),
                                                      ),
                                                      onRatingUpdate: (rating) {
                                                        print(rating);
                                                      },
                                                    ),
                                                    addTextWorkSansRegular(
                                                        text: '3 weeks ago',
                                                        textColor:
                                                            Color(0xff1C1D1F),
                                                        fontSize: 14.0)
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        buildSizeHeight(10),
                                        addTextWorkSansRegular(
                                            text:
                                                'Regarding the last question (Question 6) of the latest quiz (Quiz 28), I\'m not...',
                                            textColor: const Color(0xff1C1D1F),
                                            fontSize: 16.0),
                                        buildSizeHeight(10),
                                        addTextWorkSansMedium(
                                          text: 'See More',
                                          textColor: const Color(0xffE49136),
                                          fontSize: 15.0,
                                          textDecoration:
                                              TextDecoration.underline,
                                        ),
                                        buildSizeHeight(5),
                                        Row(
                                          children: [
                                            addTextWorkSansRegular(
                                                text: 'Helpful?',
                                                textColor:
                                                    const Color(0xff1C1D1F),
                                                fontSize: 14.0),
                                            buildSizeWidth(10),
                                            Image.asset(
                                              'assets/images/like.png',
                                              height: 18.sp,
                                            ),
                                            buildSizeWidth(10),
                                            Image.asset(
                                              'assets/images/unlike.png',
                                              height: 18.sp,
                                            ),
                                            buildSizeWidth(10),
                                            InkWell(
                                              child: Image.asset(
                                                'assets/images/_flag_location_icon@3x.png',
                                                height: 18.sp,
                                              ),
                                              onTap: () {
                                                _buildExpandableDialog();
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildExpandableDialog() {
    Get.defaultDialog(
        title: '',
        titleStyle: const TextStyle(fontSize: 0.0),
        titlePadding: EdgeInsets.zero,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildSizeWidth(30),
                            Container(
                              width: 68.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: InkWell(
                                child: const Icon(
                                  Icons.clear,
                                  color: Color(0xffE49136),
                                ),
                                onTap: () {
                                  Get.back();
                                },
                              ),
                            )
                          ]),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Group 4@3x.png',
                            height: 40.sp,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: addTextGeorgia(
                                text: 'Report abuse',
                                textColor: const Color(0xff1C1D1F),
                                fontSize: 18.0),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xffD6C4B4),
                        thickness: 1,
                      ),
                      buildSizeHeight(10),
                      Text.rich(
                        style: SemiRegularTextStyle().copyWith(
                          color: const Color(0xff474747),
                          height: 2,
                          fontSize: 15.sp,
                        ),
                        const TextSpan(
                          children: [
                            TextSpan(
                                text:
                                    'Flagged content is reviewed by Our Sistahood staff to determine whether it violates Terms of Service or Community Guidelines. If you have a question or technical issue, please contact our'),
                            TextSpan(
                              text: 'Support team here.',
                              style: TextStyle(color: Color(0xffE49136)),
                            ),
                          ],
                        ),
                      ),
                      buildSizeHeight(10),
                      CustomTextField(
                          textInputType: TextInputType.name,
                          hintText: 'Issue Type',
                          suffixIcon:
                              const Icon(Icons.keyboard_arrow_down_outlined)),
                      buildSizeHeight(15),
                      CustomTextField(
                        maxLine: 2,
                        hintText: 'Issue Details',
                      ),
                      buildSizeHeight(10),
                      Row(
                        children: [
                          CustomButton(
                            btnWidth: 115.w,
                            btnHeight: 40.h,
                            child: addTextWorkSansRegular(
                                text: 'Cancel',
                                textColor: Colors.white,
                                fontSize: 16.0),
                            onPressed: () {
                              // Get.to(Dashboard());
                            },
                          ),
                          buildSizeWidth(10),
                          CustomButton(
                            btnWidth: 115.w,
                            btnHeight: 40.h,
                            child: addTextWorkSansRegular(
                                text: 'Submit',
                                textColor: Colors.white,
                                fontSize: 16.0),
                            onPressed: () {
                              // Get.to(Mycourses_Screen());
                            },
                          ),
                        ],
                      )
                    ])),
          ],
        ));
  }
}
