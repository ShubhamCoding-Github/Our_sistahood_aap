import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/utils.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xffFEFAF6),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
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
                        text: 'Description',
                        textColor: const Color(0xff1C1D1F),
                        fontSize: 20.0),
                  ],
                ),
                addTextWorkSansRegular(
                    height: 2,
                    text:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text.',
                    textColor: const Color(0xff1C1D1F),
                    fontSize: 15.0),
                buildSizeHeight(10),
                CustomButton(
                  child: addTextWorkSansRegular(
                      text: 'Watch Promotional Video',
                      textColor: const Color(0xffFFFFFF),
                      fontSize: 16.0),
                  onPressed: () {
                    _buildExpandableDialog();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildExpandableDialog() {
    showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Dialog(
          insetPadding: EdgeInsets.zero,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  SizedBox(
                      height: 214.h,
                      child: ClipRRect(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          child: Image.asset(
                              'assets/images/Mask Group 10@3x.png',
                              fit: BoxFit.cover))),
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.clear,
                        color: Color(0xffE49136),
                        size: 30,
                      ),
                    ),
                    onTap: () {
                      Get.back();
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
