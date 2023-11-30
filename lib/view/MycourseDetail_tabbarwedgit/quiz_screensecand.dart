import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/quiz_screenthird.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';
class Quiz_Screensecand extends StatefulWidget {
  const Quiz_Screensecand({Key? key}) : super(key: key);

  @override
  State<Quiz_Screensecand> createState() => _Quiz_ScreensecandState();
}

class _Quiz_ScreensecandState extends State<Quiz_Screensecand> {
  int selectedIndex = -1;
  List<String> optionList = [
    'We',
    'have',
    'a',
    'turtle',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFCF2F4),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  child:  const Icon(
                    Icons.clear,size: 30,
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
            addTextWorkSansMedium(text: 'Single Choice', textColor:Color(0xffAF5143), fontSize: 17.0)
          ],
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(20.sp),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffFEFAF6),
                    borderRadius: BorderRadiusDirectional.circular(10),
                    border: Border.all(color: Color(0xffD6C4B4))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      buildSizeHeight(10),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(10),
                            border: Border.all(color: const Color(0xff56B14F),
                        )),
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/Group 7032@3x.png',height: 30.sp,),
                              buildSizeWidth(5),
                              addTextWorkSansRegular(text: 'Your answer is right.', textColor: Color(0xff1C1D1F), fontSize:15.0)
                            ],
                          ),
                        ),
                      ),
                          buildSizeHeight(10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          addTextGeorgia(text: 'Q 1:', textColor: const Color(0xffAF5143), fontSize:16.0),
                          buildSizeWidth(10),
                          Flexible(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  addTextGeorgia(text: 'Which word is a noun? (not a pronoun)', textColor: Color(0xff1C1D1F), fontSize:17.0,textAlign: TextAlign.start),
                                  buildSizeHeight(10),
                                  addTextWorkSansRegular(text: 'We have a turtle', textColor: Color(0xff1C1D1F), fontSize:16.0),
                                  buildSizeHeight(10),
                                ]),
                          )
                        ],
                      ),
                      ListView.builder(
                        itemCount: optionList.length,
                        shrinkWrap:  true,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadiusDirectional.circular(10),
                                      border: Border.all(color: Color(0xffD6C4B4))
                                  ),
                                  child:  Row(
                                    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Radio(
                                              activeColor: const Color(0xffE49136),
                                              value: true,
                                              groupValue: selectedIndex==index,
                                              onChanged: (value) {
                                                selectedIndex = index;
                                                setState(() {

                                                });
                                                print(value); //selected value
                                              }),
                                          addTextWorkSansMedium(text:optionList[index], textColor: const Color(0xff1C1D1F), fontSize:16.0),
                                        ],
                                      ),
                                      selectedIndex == index?
                                      Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Image.asset('assets/images/8666656_check_circle_icon (1)@3x.png',height: 17.sp,),
                                      ):SizedBox.shrink()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        child: Container(
          height: 65.h,
          color: const Color(0xff3B2A27),
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal:20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                addTextWorkSansMedium(text: 'Question 1 of 5', textColor:Color(0xffEDDAC5), fontSize:16.0),
                CustomButton(
                  color:  const Color(0xffFEFAF6),
                  btnHeight: 45.h,
                  btnWidth: 89.w,
                  child: addTextWorkSansRegular(
                      text: 'Next',
                      textColor: const Color(0xffE49136),
                      fontSize: 16.0),
                  onPressed: () {
                   Get.to(Quiz_screenthird());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
