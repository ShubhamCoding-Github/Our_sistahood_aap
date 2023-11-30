import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utility/utils.dart';

class InstructorScreen extends StatefulWidget {
  const InstructorScreen({Key? key}) : super(key: key);

  @override
  State<InstructorScreen> createState() => _InstructorScreenState();
}

class _InstructorScreenState extends State<InstructorScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(left: 20,right: 20,top: 20),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0.5.sp,
                    blurRadius: 5.sp)
              ],
              color: const Color(0xffFFFFFF), borderRadius: BorderRadius.circular(10)),
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
                        text: 'Instructor',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 20.0),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      child: Image.asset(
                        'assets/images/image.png',
                        height: 80.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          addTextWorkSansBold(
                              text: 'Peter Parker',
                              textColor: const Color(0xffE49136),
                              fontSize: 18.0),
                          addTextWorkSansRegular(
                              text: 'Compute With Cloud Inc',
                              textColor: const Color(0xff1C1D1F),
                              fontSize: 15.0),
                          buildSizeHeight(5),
                          Card(
                            color: const Color(0xffAF5143),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
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
                          addTextWorkSansMedium(
                              text: '20,112 students . 10 Courses',
                              textColor: const Color(0xff3B2A27),
                              fontSize: 15.0),
                        ],
                      ),
                    )
                  ],
                ),
                addTextWorkSansRegular(
                    text:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                    textColor: const Color(0xff1C1D1F),
                    fontSize:15.0,textAlign: TextAlign.start),
                buildSizeHeight(10),
                addTextWorkSansRegular(
                    text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    textColor: const Color(0xff1C1D1F),
                    fontSize:15.0,textAlign: TextAlign.start),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
