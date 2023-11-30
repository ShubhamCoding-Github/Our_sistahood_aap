import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utility/utils.dart';

class KeypointScreen extends StatefulWidget {
  const KeypointScreen({Key? key}) : super(key: key);

  @override
  State<KeypointScreen> createState() => _KeypointScreenState();
}

class _KeypointScreenState extends State<KeypointScreen> {
  List<Map<String, dynamic>>  includesScreen = [
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
  List<String> courceList = [
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
        physics: const AlwaysScrollableScrollPhysics(),
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
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment:  Alignment.center,
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
                     physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: includesScreen.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset( includesScreen[index]['icon'],
                                    height: 27.sp,),
                                ),
                                buildSizeWidth(10),
                                Flexible(
                                  child: addTextWorkSansRegular(
                                      text: includesScreen[index]['title'],
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
            buildSizeHeight(20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5.sp,
                          blurRadius: 5.sp)
                    ],
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                    ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment:  Alignment.center,
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
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: courceList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/8666656_check_circle_icon@3x.png'
                                      ,height: 27.sp,),

                                    buildSizeWidth(10),
                                    Flexible(
                                      child: addTextWorkSansRegular(
                                          text: courceList[index],
                                          textColor: const Color(0xff474747),
                                          fontSize: 16.0,textAlign:TextAlign.start),
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
            ),
          ],
        ),

      ),
    );
  }
}
