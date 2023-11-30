import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/CategriesScreen/allreviews_screen.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';

class RatingsScreen extends StatelessWidget {
  const RatingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Group 4@3x.png',
                          height: 40.sp,
                        ),
                        addTextGeorgia(
                            text: 'Ratings',
                            textColor: const Color(0xff1C1D1F),
                            fontSize: 20.0),
                      ],
                    ),
                    Card(
                      color: const Color(0xffAF5143),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                fontSize: 15.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                buildSizeHeight(10),

                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffFCF2F4),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                        child: Image.asset(
                                            'assets/images/Mask Group 25@3x.png')),
                                    buildSizeWidth(10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        addTextWorkSansMedium(
                                            text: 'Jorge Luis D.',
                                            textColor: Color(0xff1C1D1F),
                                            fontSize: 16.0),
                                        Row(
                                          children: [
                                            RatingBar.builder(
                                              itemSize: 20,
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 1.0),
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Color(0xffE49136),
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                            addTextWorkSansRegular(
                                                text: '3 weeks ago',
                                                textColor: Color(0xff1C1D1F),
                                                fontSize: 14.0)
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                buildSizeHeight(10),
                                addTextWorkSansRegular(
                                    text:
                                        'Regarding the last question (Question 6) of the latest quiz (Quiz 28), I\'m not...',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 16.0),
                                buildSizeHeight(10),
                                addTextWorkSansMedium(
                                  text: 'See More',
                                  textColor: const Color(0xffE49136),
                                  fontSize: 15.0,
                                  textDecoration: TextDecoration.underline,
                                ),
                                buildSizeHeight(5),
                                Row(
                                  children: [
                                    addTextWorkSansRegular(
                                        text: 'Helpful?',
                                        textColor: const Color(0xff1C1D1F),
                                        fontSize: 14.0),
                                    buildSizeWidth(10),
                                    Image.asset(
                                      'assets/images/like.png',
                                      height: 18.sp,
                                    ),
                                    buildSizeWidth(10),
                                    Image.asset(
                                      'assets/images/unlike.png',
                                      height: 18.sp,
                                    ),
                                    buildSizeWidth(10),
                                    Image.asset(
                                      'assets/images/_flag_location_icon@3x.png',
                                      height: 18.sp,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                CustomButton(
                  child: addTextWorkSansRegular(
                      text: 'See All Reviews',
                      textColor: const Color(0xffFFFFFF),
                      fontSize: 16.0),
                  onPressed: () {
                   Get.to(const Allreviews_Screen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
