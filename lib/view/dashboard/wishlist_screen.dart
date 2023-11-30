import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/CategriesScreen/card_screen.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/mycoursedetail_screen.dart';
import 'package:our_sistahood_app/view/Notification_Screen/notification_screen.dart';

import '../../Utility/utils.dart';

class Wishlist_Screen extends StatefulWidget {
  const Wishlist_Screen({Key? key}) : super(key: key);

  @override
  State<Wishlist_Screen> createState() => _Wishlist_ScreenState();
}

class _Wishlist_ScreenState extends State<Wishlist_Screen> {
  List<bool> heart = [];
  @override
  void initState() {
    heart = List.filled(10, true);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xffFFFFFF),
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
                          width: 30.0,
                          child: InkWell(
                            child: Image.asset('assets/images/icons@3x.png',
                              height: 22.sp,),
                            onTap: () {
                              Get.to(const CardScreen());
                            },
                          )),
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
            body: Padding(
              padding: EdgeInsets.all(20.sp),
              child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 156.sp,
                          width: 112.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/Mask  8@3x.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
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
                                            textColor: const Color(0xffEDDAC5),
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 2),
                                          child: addTextWorkSansBold(
                                              text: 'AUD',
                                              textColor:
                                                  const Color(0xffAF5143),
                                              fontSize: 14.0),
                                        ),
                                        addTextWorkSansBold(
                                            text: '500',
                                            textColor: const Color(0xffAF5143),
                                            fontSize: 24.0),
                                      ],
                                    ),
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
                                                  height: 12.sp,
                                                ),
                                                buildSizeWidth(5),
                                                addTextWorkSansMedium(
                                                    text: '5.0 (15)',
                                                    textColor:
                                                        const Color(0xffEDDAC5),
                                                    fontSize: 14.0),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )));
  }
}
