import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/Utility/utils.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';

class Overview_Screen extends StatefulWidget {
  const Overview_Screen({Key? key}) : super(key: key);

  @override
  State<Overview_Screen> createState() => _Overview_ScreenState();
}

class _Overview_ScreenState extends State<Overview_Screen> {
  List<Map<String, dynamic>> Courselist = [
    {
      "title": '19.5 hours on-demand video',
      "icon": 'assets/images/video_icon@3x.png',
    },
    {
      "title": '130 articles',
      "icon": 'assets/images/newspaper_icon@3x.png',
    },
    {
      "title": '56 downloadable resources',
      "icon": 'assets/images/download_icon@3x.png',
    },
    {
      "title": '1 practice test',
      "icon": 'assets/images/circle_icon@3x.png',
    },
    {
      "title": 'Access on mobile and TV',
      "icon": 'assets/images/smart_tablet_icon@3x.png',
    },
    {
      "title": 'Certificate of completion',
      "icon": 'assets/images/trophy_icon@3x.png',
    },
  ];
  List<String> includesList = [
    'You will gain first-hand experience on how to protect, monitor, detect, and respond to security incidents',
    'Material to prepare and pass the AWS Security Specialty Exam',
    'Timed Practice Test',
    'In-depth labs',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(0, 0), // Shadow position
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addTextWorkSansRegular(
                      height: 2,
                      text:
                          'Gain knowledge to protect your AWS environment. Live Study Group Q&A!',
                      textColor: const Color(0xff1C1D1F),
                      fontSize: 16.0,
                      textAlign: TextAlign.start),
                  buildSizeHeight(10),
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
                                height: 14.sp,
                              ),
                              buildSizeWidth(5),
                              addTextWorkSansMedium(
                                  text: '5.0 (18 ratings)',
                                  textColor: const Color(0xffEDDAC5),
                                  fontSize: 14.0),
                            ],
                          ),
                        ),
                      ),
                      buildSizeWidth(5),
                      addTextWorkSansMedium(
                          text: '20,112 students',
                          textColor: Color(0xff3B2A27),
                          fontSize: 14.0)
                    ],
                  ),
                  buildSizeHeight(10),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/icons@1x.png',
                        height: 26.sp,
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
                  buildSizeHeight(10),
                  addTextWorkSansRegular(
                      text: 'Updated on: June 2023',
                      textColor: const Color(0xff1C1D1F),
                      fontSize: 16.0),
                  buildSizeHeight(10),
                  addTextWorkSansRegular(
                      text:
                          '68.5 total hours . Lectures: 21 Video: 2 total hours',
                      textColor: const Color(0xff686868),
                      fontSize: 14.0,
                      textAlign: TextAlign.start),
                  buildSizeHeight(10),
                  CustomButton(
                    color: const Color(0xffFEFAF6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/XMLID_328_@3x.png',height: 20.sp,),
                        buildSizeWidth(5),
                        addTextWorkSansRegular(
                            text: 'Leave a Rating',
                            textColor: const Color(0xffE49136),
                            fontSize: 16.0),
                      ],
                    ),
                    onPressed: () {
                      _settingModalBottomratting(context);
                    },
                  ),
                ],
              ),
            ),
          ),
          buildSizeHeight(10),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 0), // Shadow position
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Group 4@3x.png',
                          height: 40.sp,
                        ),
                        addTextGeorgia(
                            text: 'Description',
                            textColor: const Color(0xff1C1D1F),
                            fontSize: 20.0),
                      ],
                    ),
                    addTextWorkSansRegular(
                        height: 2,
                        text:
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text.',
                        textColor: Color(0xff1C1D1F),
                        fontSize: 15.0,
                        textAlign: TextAlign.start),
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
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(15),
               ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Group 4@3x.png',
                        height: 40.sp,
                      ),
                      addTextGeorgia(
                          text: 'This course includes',
                          textColor: const Color(0xff1C1D1F),
                          fontSize: 20.0),
                    ],
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Courselist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  Courselist[index]['icon'],
                                  height: 27.sp,
                                ),
                              ),
                              buildSizeWidth(10),
                              Flexible(
                                child: addTextWorkSansRegular(
                                    text: Courselist[index]['title'],
                                    textColor: const Color(0xff474747),
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          buildSizeHeight(10),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0.5.sp,
                    blurRadius: 5.sp)
              ],
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(15),
                ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Group 4@3x.png',
                        height: 40.sp,
                      ),
                      addTextGeorgia(
                          text: 'This course includes',
                          textColor: const Color(0xff1C1D1F),
                          fontSize: 20.0),
                    ],
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: includesList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/8666656_check_circle_icon@3x.png',
                                  height: 27.sp,
                                ),
                                buildSizeWidth(10),
                                Flexible(
                                  child: addTextWorkSansRegular(
                                      text: includesList[index],
                                      textColor: const Color(0xff474747),
                                      fontSize: 16.0,
                                      textAlign: TextAlign.start),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ])));
  }

  void _settingModalBottomratting(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return StatefulBuilder(builder: (context, set) {
            return Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5.sp,
                          blurRadius: 5.sp)
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 20.sp,
                    left: 20.sp,
                  ),
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
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 0.5.sp,
                                        blurRadius: 5.sp)
                                  ],
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Align(
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
                              ),
                            )
                          ]),
                      Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Group 4@3x.png',
                              height: 40.sp,
                            ),
                            addTextGeorgia(
                                text: 'How would you rate this course?',
                                textColor: const Color(0xff1C1D1F),
                                fontSize: 18.0,
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color(0xffEDDAC5),
                        thickness: 1,
                      ),
                      buildSizeHeight(10),
                      Center(
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Color(0xffE49136),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                      buildSizeHeight(20),
                      CustomTextField(
                        maxLine: 7,
                        textInputType: TextInputType.name,
                        hintText: 'Tell us about your own personal experience taking this course. Was it a good match for you?',
                      ),
                    buildSizeHeight(20),
                    CustomButton(
                        child: addTextWorkSansRegular(
                            text: 'Save and Continue',
                            textColor:  Colors.white,
                            fontSize: 16.0),
                        onPressed: () {
                       Get.back();
                        },
                      ),
                      buildSizeHeight(20),
                    ],

                    // Visibility(
                    //   child: buildExpandableContentsort(),
                    //   visible: selectedindex == 0,
                    // ),
                  ),
                ));
          });
        });
  }
}
