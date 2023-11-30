import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/mycoursedetail_screen.dart';
import '../../Utility/utils.dart';
import '../Notification_Screen/notification_screen.dart';

class Mycourses_Screen extends StatefulWidget {
  const Mycourses_Screen({Key? key}) : super(key: key);

  @override
  State<Mycourses_Screen> createState() => _Mycourses_ScreenState();
}

class _Mycourses_ScreenState extends State<Mycourses_Screen> {
  List<bool> heart = [];
  @override
  void initState() {
    heart = List.filled(100, true);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFCF2F4),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/Sistahood logo@3x.png',
              height: 40.sp,
            ),
            Row(
              children: [
                SizedBox(
                    width: 35.0,
                    child: Image.asset('assets/images/icons@3x.png', height: 22.sp,)),
                InkWell(
                  child: Image.asset(
                    'assets/images/2203538_alarm_bell_notification_ring_icon@3x.png',
                    height: 22.sp,),
                  onTap: () {
                    Get.to(() => const NotificationView());
                  },
                ),
              ],
            )
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 0.5.sp,
                                blurRadius: 5.sp)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 156.sp,
                            width: 112.sp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Mask  8@3x.png'),
                                  fit:BoxFit.cover,
                                )),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Card(
                                        color: const Color(0xffAF5143),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: addTextWorkSansMedium(
                                              text: 'Art & Design',
                                              textColor:
                                                  const Color(0xffEDDAC5),
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
                                  InkWell(
                                    child: addTextGeorgia(
                                        text:
                                            'Music Theory Learn New student & funda...',
                                        textColor: const Color(0xff1C1D1F),
                                        fontSize: 16.0),
                                    onTap: () {
                                      Get.to(Mycoursedetail_Screen());
                                    },
                                  ),
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
                                          textColor: const Color(0xff1C1D1F),
                                          fontSize: 14.0),
                                    ],
                                  ),
                                  buildSizeHeight(10),
                                  Container(
                                    width: 225.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(9.0),
                                        border: Border.all(
                                            color: const Color(0xffD6C4B4))),
                                    child: const LinearProgressIndicator(
                                      value: 0.03,
                                      backgroundColor: Color(0xffF9F2EB),
                                      color: Color(0xffE49136),
                                    ),
                                  ),
                                  buildSizeHeight(10),
                                  addTextWorkSansMedium(
                                      text: 'Start Course',
                                      textColor: const Color(0xffE49136),
                                      fontSize: 14.0)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
