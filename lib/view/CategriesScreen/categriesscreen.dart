import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/Utility/utils.dart';
import 'package:our_sistahood_app/view/CategriesScreen/allcoursesgrid_screen.dart';

import '../../Utility/custum_textfield.dart';

class Categriesscreen extends StatefulWidget {
  const Categriesscreen({Key? key}) : super(key: key);

  @override
  State<Categriesscreen> createState() => _CategriesscreenState();
}

class _CategriesscreenState extends State<Categriesscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFCF2F4),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xffE49136),
                        size: 25,
                      ),
                      onTap: () {
                        Get.back();
                      },
                    ),
                    buildSizeWidth(5),
                    addTextWorkSansMedium(
                        text: 'Popular Subjects',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 18.0),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/icons@3x.png',
                      height: 22.sp,
                    ),
                    buildSizeWidth(10),
                    Image.asset(
                      'assets/images/2203538_alarm_bell_notification_ring_icon@3x.png',
                      height: 22.sp,
                    ),
                  ],
                )
              ],
            ),
            buildSizeHeight(15),
            CustomTextField(
              textInputType: TextInputType.visiblePassword,
              prefixIcon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  color: Color(0xffE49136),
                  size: 25,
                ),
              ),
              hintText: 'Search...',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: InkWell(
                onTap: () {
                  Get.to(const Allcoursesgridscreen());
                },
                child: GridView.builder(
                    padding: EdgeInsets.zero,
                    physics: const PageScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: (1 / 1),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (BuildContext ctx, index) {
                      return DottedBorder(
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(12),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          child: Container(
                            width: 100.w,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/Group 7139@3x.png',
                                  height: 40.sp,
                                ),
                                addTextWorkSansMedium(
                                    text: 'Art &Design',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 14.0,
                                    textAlign: TextAlign.center),
                                addTextWorkSansBold(
                                    text: '10',
                                    textColor: const Color(0xffAF5143),
                                    fontSize: 14.0)
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
