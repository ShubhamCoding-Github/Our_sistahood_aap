import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_sistahood_app/Utility/utils.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';

class Question_Answer_Screen extends StatelessWidget {
  Question_Answer_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          addTextGeorgia(
              text: 'Create Question',
              textColor: const Color(0xff1C1D1F),
              fontSize: 18.0),
          buildSizeHeight(10),
          CustomTextField(
            maxLine: 2,
            hintText: 'Write here...',
          ),
          buildSizeHeight(10),
          CustomButton(
            btnWidth: 110.sp,
            btnHeight: 45.sp,
            child: addTextWorkSansRegular(
                text: 'Submit', textColor: Colors.white, fontSize: 16.0),
            onPressed: () {
              // Get.back();
            },
          ),
          buildSizeHeight(10),
          Row(
            children: [
              Image.asset(
                'assets/images/Mask Group 15@3x.png',
                height: 41.sp,
              ),
              buildSizeWidth(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addTextWorkSansMedium(
                      text: 'Lorraine D. Raines',
                      textColor: Color(0xff1C1D1F),
                      fontSize: 16.0),
                  addTextWorkSansRegular(
                      text: '2 day\'s ago',
                      textColor: Color(0xff686868),
                      fontSize: 14.0),
                ],
              )
            ],
          ),
          buildSizeHeight(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addTextWorkSansBold(
                  text: 'Q 1.', textColor: Color(0xff1C1D1F), fontSize: 16.0),
              buildSizeWidth(5),
              Flexible(
                child: addTextWorkSansRegular(
                    text:
                        'Lorem Ipsum is simply dummy standard dummy text ever since the 1500s type specimen book?',
                    textColor: const Color(0xff1C1D1F),
                    fontSize: 14.0,
                    textAlign: TextAlign.start),
              ),
            ],
          ),
          buildSizeHeight(10),
          Row(
            children: [
              Image.asset(
                'assets/images/Page-1@3x.png',
                height: 14.sp,
              ),
              buildSizeWidth(5),
              addTextWorkSansMedium(
                  text: 'Reply', textColor: Color(0xffE49136), fontSize: 16.0)
            ],
          ),
          buildSizeHeight(20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 235,
                child: VerticalDivider(
                  color: Color(0xff686868),
                  thickness: 1,
                ),
              ),
              buildSizeWidth(20),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Mask Group 15@3x.png',
                          height: 41.sp,
                        ),
                        buildSizeWidth(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            addTextWorkSansMedium(
                                text: 'Lorraine D. Raines',
                                textColor: Color(0xff1C1D1F),
                                fontSize: 16.0),
                            addTextWorkSansRegular(
                                text: '2 day\'s ago',
                                textColor: Color(0xff686868),
                                fontSize: 14.0),
                          ],
                        )
                      ],
                    ),
                    buildSizeHeight(10),
                    addTextWorkSansRegular(
                        text:
                            'Lorem Ipsum is simply dummy standard dummy text ever since...',
                        textColor: Color(0xff1C1D1F),
                        fontSize: 16.0,
                        textAlign: TextAlign.start),
                    buildSizeHeight(10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Page-1@3x.png',
                          height: 14.sp,
                        ),
                        buildSizeWidth(5),
                        addTextWorkSansMedium(
                            text: 'Reply',
                            textColor: Color(0xffE49136),
                            fontSize: 16.0)
                      ],
                    ),
                    buildSizeHeight(10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Mask Group 15@3x.png',
                          height: 41.sp,
                        ),
                        buildSizeWidth(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            addTextWorkSansMedium(
                                text: 'Lorraine D. Raines',
                                textColor: const Color(0xff1C1D1F),
                                fontSize: 16.0),
                            addTextWorkSansRegular(
                                text: '2 day\'s ago',
                                textColor: const Color(0xff686868),
                                fontSize: 14.0),
                          ],
                        )
                      ],
                    ),
                    buildSizeHeight(10),
                    addTextWorkSansRegular(
                        text:
                            'Lorem Ipsum is simply dummy standard dummy text ever since...',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 16.0,
                        textAlign: TextAlign.start),
                    buildSizeHeight(10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Page-1@3x.png',
                          height: 14.sp,
                        ),
                        buildSizeWidth(5),
                        addTextWorkSansMedium(
                            text: 'Reply',
                            textColor: const Color(0xffE49136),
                            fontSize: 16.0)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          buildSizeHeight(20),
          Row(
            children: [
              Image.asset(
                'assets/images/Mask Group 15@3x.png',
                height: 41.sp,
              ),
              buildSizeWidth(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addTextWorkSansMedium(
                      text: 'Lorraine D. Raines',
                      textColor: const Color(0xff1C1D1F),
                      fontSize: 16.0),
                  addTextWorkSansRegular(
                      text: '2 day\'s ago',
                      textColor: const Color(0xff686868),
                      fontSize: 14.0),
                ],
              )
            ],
          ),
          buildSizeHeight(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addTextWorkSansBold(
                  text: 'Q 2.', textColor: const Color(0xff1C1D1F), fontSize: 16.0),
              buildSizeWidth(5),
              Flexible(
                child: addTextWorkSansRegular(
                    text:
                        'Lorem Ipsum is simply dummy standard dummy text ever since the 1500s type specimen book?',
                    textColor: const Color(0xff1C1D1F),
                    fontSize: 14.0,
                    textAlign: TextAlign.start),
              ),
            ],
          ),
          buildSizeHeight(10),
          Row(
            children: [
              Image.asset(
                'assets/images/Page-1@3x.png',
                height: 14.sp,
              ),
              buildSizeWidth(5),
              addTextWorkSansMedium(
                  text: 'Reply', textColor: const Color(0xffE49136), fontSize: 16.0)
            ],
          ),
          buildSizeHeight(10),
          CustomTextField(
            hintText: 'Answer write here...',
          ),
          buildSizeHeight(10),
          CustomButton(
            btnWidth: 110.sp,
            btnHeight: 45.sp,
            child: addTextWorkSansRegular(
                text: 'Submit', textColor: Colors.white, fontSize: 16.0),
            onPressed: () {
              // Get.back();
            },
          ),
        ],
      ),
    ));
  }
}
