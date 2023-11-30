import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';

class Courcecontact_Screen extends StatefulWidget {
  const Courcecontact_Screen({Key? key}) : super(key: key);

  @override
  State<Courcecontact_Screen> createState() => _Courcecontact_ScreenState();
}

class _Courcecontact_ScreenState extends State<Courcecontact_Screen> {
  bool isintroduction = false;
  List<Map<String, dynamic>> introductionlist = [
    {
      "title": 'Introduction',
      "sub title": '02:14',
      "icon": 'assets/images/monitor_icon@3x.png',
    },
    {
      "title": 'Security Specialty Exam Overview',
      "sub title": '00:09',
      "icon": 'assets/images/paper_icon@3x.png',
    },
    {
      "title": 'New Version of Security Exam',
      "sub title": '00:04',
      "icon": 'assets/images/paper_icon@3x.png',
    },
    {
      "title": 'Join us for the Live Q&A - Per Month!',
      "sub title": '00:41',
      "icon": 'assets/images/paper_icon@3x.png',
    },
    {
      "title": 'Interview - A Deep Dive Into AWS Certifications',
      "sub title": '00:42',
      "icon": 'assets/images/paper_icon@3x.png',
    },
    {
      "title": 'Introduction',
      "sub title": '02:14',
      "icon": 'assets/images/paper_icon@3x.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
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
                        buildSizeWidth(10),
                        Column(
                          children: [
                            addTextGeorgia(
                                text: 'Introduction',
                                textColor: const Color(0xff1C1D1F),
                                fontSize: 16.0),
                            addTextWorkSansRegular(
                                text: '6 lectures . 5min',
                                textColor: const Color(0xff686868),
                                fontSize: 13),
                          ],
                        ),
                      ],
                    ),
                    Visibility(
                      child: buildExpandableContentlecture(),
                      visible: isintroduction,
                    ),
                  ],
                ),
              ),
            ),
            buildSizeHeight(20),
            Container(
              decoration: BoxDecoration( boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0.5.sp,
                    blurRadius: 5.sp)
              ],

                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
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
                          buildSizeWidth(10),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                addTextGeorgia(
                                    text:
                                        'Infrastructure, Pricing, Support - Review',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 16.0,textAlign: TextAlign.start),
                                addTextWorkSansRegular(
                                    text: '6 lectures . 5min',
                                    textColor: const Color(0xff686868),
                                    fontSize: 13),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildSizeHeight(20),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0.5.sp,
                        blurRadius: 5.sp)
                  ],
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            child: Image.asset(
                              isintroduction
                                  ? 'assets/images/Group 64@3x.png'
                                  : 'assets/images/downarrow74@3x.png',
                              height: 21.sp,
                            ),
                            onTap: () {
                              setState(() {});
                            },
                          ),
                          buildSizeWidth(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                               width: 250 ,
                                child: addTextGeorgia(
                                    text:
                                        'Architecture of a cloud based solution',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 16.0,textAlign: TextAlign.start),
                              ),
                              addTextWorkSansRegular(
                                text: '6 lectures . 5min',
                                textColor: const Color(0xff686868),
                                fontSize: 13,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildSizeHeight(20),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0.5.sp,
                        blurRadius: 5.sp)
                  ],
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            child: Image.asset(
                              isintroduction
                                  ? 'assets/images/Group 64@3x.png'
                                  : 'assets/images/downarrow74@3x.png',
                              height: 21.sp,
                            ),
                            onTap: () {
                              setState(() {});
                            },
                          ),
                          buildSizeWidth(10),
                          Column(
                            children: [
                              addTextGeorgia(
                                  text: 'VPC Refresher',
                                  textColor: const Color(0xff1C1D1F),
                                  fontSize: 16.0),
                              addTextWorkSansRegular(
                                  text: '6 lectures . 5min',
                                  textColor: const Color(0xff686868),
                                  fontSize: 13),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildExpandableContentlecture() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: introductionlist.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(index==0)
            const Divider(
              color: Color(0xffEDDAC5),
              thickness: 1,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    introductionlist[index]['icon'],
                    height: 27.sp,
                  ),
                ),
                buildSizeWidth(10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: addTextWorkSansRegular(
                                text: introductionlist[index]['title'],
                                textColor: const Color(0xff474747),
                                fontSize: 16.0,
                                textAlign: TextAlign.start),
                          ),
                          if(index==0)
                          CustomButton(
                            btnHeight: 23.h,
                             btnWidth: 70.w,
                            color: const Color(0xffFEFAF6),
                            child: addTextWorkSansRegular(
                                text: 'Preview',
                                textColor: const Color(0xffE49136),
                                fontSize: 16.0),
                            onPressed: () {

                            },
                          ),
                        ],
                      ),
                      addTextWorkSansRegular(
                          text: introductionlist[index]['sub title'],
                          textColor: const Color(0xff474747),
                          fontSize: 16.0,
                          textAlign: TextAlign.start),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
