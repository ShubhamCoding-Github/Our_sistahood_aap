import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/CategriesScreen/checkout_screen.dart';
import 'package:our_sistahood_app/view/tabbar_wedgit/course_detail.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';
import '../Notification_Screen/notification_screen.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
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
            Row(
              children: [
                InkWell(
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xffE49136),
                  ),
                  onTap: () {
                    Get.back();
                  },
                ),
                addTextWorkSansMedium(
                    text: 'Cart',
                    textColor: const Color(0xff1C1D1F),
                    fontSize: 17.0),
              ],
            ),
            InkWell(
              child: Image.asset(
                  'assets/images/2203538_alarm_bell_notification_ring_icon@3x.png',
                  height: 22.sp),
              onTap: () {
                Get.to(() => const NotificationView());
              },
            ),
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/Mask  8@3x.png',
                                height: 156.sp,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Card(
                                            color: const Color(0xffAF5143),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: addTextWorkSansMedium(
                                                  text: 'Art & Design',
                                                  textColor:
                                                      const Color(0xffEDDAC5),
                                                  fontSize: 13.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        child: addTextGeorgia(
                                            text:
                                                'Music Theory Learn New student & funda...',
                                            textColor: const Color(0xff1C1D1F),
                                            fontSize: 16.0),
                                        onTap: () {
                                           Get.to(Course_Detail());
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
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 5),
                                                          child: addTextWorkSansBold(
                                                              text: 'AUD',
                                                              textColor:
                                                                  const Color(0xffAF5143),
                                                              fontSize: 14.0),
                                                        ),
                                                        addTextWorkSansBold(
                                                            text: '700',
                                                            textColor:
                                                            const Color(0xffAF5143),
                                                            fontSize: 24.0),
                                                      ],
                                                    ),
                                                    addTextWorkSansBold(
                                                        text: 'AUD900',
                                                        textColor:
                                                        const Color(0xff503E3B),
                                                        fontSize: 16.0,
                                                        textDecoration:
                                                        TextDecoration
                                                            .lineThrough),
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
                                                        padding:
                                                        const EdgeInsets.all(8.0),
                                                        child: Row(
                                                          children: [
                                                            Image.asset(
                                                              'assets/images/XMLID_328_@3x.png',
                                                              height: 12.sp,
                                                            ),
                                                            buildSizeWidth(5),
                                                            addTextWorkSansMedium(
                                                                text: '5.0 (15)',
                                                                textColor: const Color(
                                                                    0xffEDDAC5),
                                                                fontSize: 14.0),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Color(0xffEDDAC5),
                            thickness: 1,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                  color:  const Color(0xffFEFAF6),
                                  child: addTextWorkSansRegular(
                                      text: 'Remove',
                                      textColor: const Color(0xffE49136),
                                      fontSize: 16.0),
                                  onPressed: () {},
                                ),
                              ),
                              buildSizeWidth(10),
                              Expanded(
                               flex: 2 ,
                                child: CustomButton(
                                  color:  const Color(0xffFEFAF6),
                                  child: addTextWorkSansRegular(
                                      text: 'Move to Wishlist',
                                      textColor: const Color(0xffE49136),
                                      fontSize: 16.0),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            child: Container(
              height: 65.h,
              color: const Color(0xff3B2A27),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          addTextWorkSansBold(text: '\$2100', textColor:Colors.white, fontSize: 26.0),
                          Row(
                            children: [
                              addTextWorkSansBold(text: '\$2700', textColor:const Color(0xffAF5143), fontSize: 18.0,textDecoration: TextDecoration.lineThrough),
                              buildSizeWidth(10),
                              addTextWorkSansBold(text: '24% off', textColor:const Color(0xffAF5143), fontSize: 18.0),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      btnHeight: 45.h,
                      btnWidth: 151.w,
                      child: addTextWorkSansRegular(
                          text: 'Checkout',
                          textColor: Colors.white,
                          fontSize: 16.0),
                      onPressed: () {
                        Get.to(CheckoutScreen());
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
