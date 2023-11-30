import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/quiz_screensecand.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';
class Quiz_Screen extends StatefulWidget {
  const Quiz_Screen({Key? key}) : super(key: key);

  @override
  State<Quiz_Screen> createState() => _Quiz_ScreenState();
}

class _Quiz_ScreenState extends State<Quiz_Screen> {
// List<bool> selected= [];
int selectedIndex = -1;
  List<String> optionList = [
    'We',
    'have',
    'a',
    'turtle',
  ];

  @override
  void initState() {
    // selected = List.filled(optionList.length, false);
    // TODO: implement initState
    super.initState();
  }
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
                  color: const Color(0xffFEFAF6),
                  borderRadius: BorderRadiusDirectional.circular(10),
                    border: Border.all(color: const Color(0xffD6C4B4))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          addTextGeorgia(text: 'Q 1:', textColor: const Color(0xffAF5143), fontSize:16.0),
                          buildSizeWidth(10),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                addTextGeorgia(text: 'Which word is a noun? (not a pronoun)', textColor: const Color(0xff1C1D1F), fontSize:17.0,textAlign: TextAlign.start),
                                buildSizeHeight(10),
                                addTextWorkSansRegular(text: 'We have a turtle', textColor: const Color(0xff1C1D1F), fontSize:16.0),
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
                                      border: Border.all(color: const Color(0xffD6C4B4))
                                  ),
                                  child:  Row(
                                    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Radio(
                                            activeColor: const Color(0xffE49136),
                                              value: true,
                                              groupValue: selectedIndex == index,
                                              onChanged: (value) {
                                              setState(() {
                                                selectedIndex = index;
                                              });
                                                print(value); //selected value
                                              }),
                                          addTextWorkSansMedium(text:optionList[index], textColor: const Color(0xff1C1D1F), fontSize:16.0),
                                        ],
                                      ),
                                     selectedIndex == index? Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Image.asset('assets/images/8666656_check_circle_icon (1)@3x.png',height: 17.sp,),
                                      ) : const SizedBox.shrink()
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
                Row(
                  children: [
                   addTextWorkSansMedium(text: 'Question 1 of 5', textColor:Color(0xffEDDAC5), fontSize:16.0),
                  ],
                ),
                buildSizeWidth(10),
                CustomButton(
                  btnHeight: 45.h,
                  btnWidth: 60.w,
                  child: addTextWorkSansRegular(
                      text: 'Skip',
                      textColor: Colors.white,
                      fontSize: 16.0),
                  onPressed: () {
                    // _buildExpandableDialog();
                  },
                ),
                CustomButton(
                  color:  const Color(0xffFEFAF6),
                  btnHeight: 45.h,
                  btnWidth: 132.w,
                  child: addTextWorkSansRegular(
                      text: 'Check Answer',
                      textColor: const Color(0xffE49136),
                      fontSize: 16.0),
                  onPressed: () {
                  Get.to(Quiz_Screensecand());
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
