import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/mycoursedetail_screen.dart';
import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';

class Quiz_Screenfifth extends StatelessWidget {
  const Quiz_Screenfifth({Key? key}) : super(key: key);

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
                Icons.clear,
                size: 30,
                color: Color(0xffE49136),
              ),
              onTap: () {
                Get.back();
              },
            ),
            buildSizeWidth(5),
            addTextWorkSansMedium(
                text: 'Quiz',
                textColor: const Color(0xff1C1D1F),
                fontSize: 20.0),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffFEFAF6),
                    borderRadius: BorderRadiusDirectional.circular(10),
                    border: Border.all(color: Color(0xffD6C4B4))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
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
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Group 7130@3x.png',
                                height: 95.sp,
                              ),
                              addTextGeorgia(
                                height: 2,
                                  text:
                                      'Congratulations!!! You are ready to move on to the next lecture.',
                                  textColor: const Color(0xff1C1D1F),
                                  fontSize: 18.0,textAlign: TextAlign.center),
                              buildSizeHeight(10),
                              addTextWorkSansRegular(text: 'You got 4 out of 7 correct.', textColor:const Color(0xff1C1D1F), fontSize:15.0)
                            ],
                          ),
                        ),
                      ),
                      buildSizeHeight(10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/Group 7032@3x.png',height: 24.sp,),
                          buildSizeWidth(10),
                          addTextGeorgia(
                              text: 'What you know',
                              textColor: const Color(0xff1C1D1F),
                              fontSize: 17.0),
                          buildSizeWidth(10),
                        ],
                      ),
                      buildSizeHeight(10),
                      addTextWorkSansRegular(
                          text:
                          '1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          textColor: Color(0xff1C1D1F),
                          fontSize: 17.0,
                          textAlign: TextAlign.start),
                      buildSizeHeight(10),
                      addTextWorkSansRegular(
                          text:
                          '2. Lorem Ipsum is simply dummy text',
                          textColor: Color(0xff1C1D1F),
                          fontSize: 17.0,
                          textAlign: TextAlign.start),
                      buildSizeHeight(10),
                      addTextWorkSansRegular(
                          text:
                          '3. Lorem Ipsum is simply dummy text',
                          textColor: Color(0xff1C1D1F),
                          fontSize: 17.0,
                          textAlign: TextAlign.start),
                      buildSizeHeight(10),
                      addTextWorkSansRegular(
                          text:
                          '4. Lorem Ipsum is simply dummy',
                          textColor: Color(0xff1C1D1F),
                          fontSize: 17.0,
                          textAlign: TextAlign.start),
                      buildSizeHeight(20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/Group 7033@3x.png',height: 24.sp,),
                          buildSizeWidth(10),
                          addTextGeorgia(
                              text: 'What you should review',
                              textColor: const Color(0xff1C1D1F),
                              fontSize: 17.0),
                          buildSizeWidth(10),
                        ],
                      ),
                      buildSizeHeight(10),
                      addTextWorkSansRegular(
                          text:
                          '5. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          textColor: Color(0xff1C1D1F),
                          fontSize: 17.0,
                          textAlign: TextAlign.start),
                      buildSizeHeight(10),
                      addTextWorkSansRegular(
                          text:
                          '6. Lorem Ipsum is simply dummy text',
                          textColor: Color(0xff1C1D1F),
                          fontSize: 17.0,
                          textAlign: TextAlign.start),
                      buildSizeHeight(10),
                      addTextWorkSansRegular(
                          text:
                          '7. Lorem Ipsum is simply dummy text',
                          textColor: Color(0xff1C1D1F),
                          fontSize: 17.0,
                          textAlign: TextAlign.start),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        child: Container(
          height: 65.h,
          color: const Color(0xff3B2A27),
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomButton(
                    color:  Color(0xffFEFAF6),

                    child: addTextWorkSansRegular(
                        text: 'Retry Quiz',
                        textColor: const Color(0xffE49136),
                        fontSize: 16.0),
                    onPressed: () {
                      Get.to(Mycoursedetail_Screen());
                    },
                  ),
                ),
                buildSizeWidth(10),
                Expanded(
                  child: CustomButton(
                    color: const Color(0xffFEFAF6),
                    child: addTextWorkSansRegular(
                        text: 'Continue',
                        textColor: const Color(0xffE49136),
                        fontSize: 16.0),
                    onPressed: () {
                      Get.to(Mycoursedetail_Screen());
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
