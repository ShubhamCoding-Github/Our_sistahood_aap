import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/MycourseDetail_tabbarwedgit/viewassignment_screen.dart';
import '../../Controller/image_picker_controller.dart';
import '../../Controller/video_picker_controller.dart';
import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';
import '../../Utility/utils.dart';

class Submitedassignment_Screen extends StatefulWidget {
  const Submitedassignment_Screen({Key? key}) : super(key: key);

  @override
  State<Submitedassignment_Screen> createState() =>
      _Submitedassignment_ScreenState();
}

class _Submitedassignment_ScreenState extends State<Submitedassignment_Screen> {
  final imagePickerController = ImagePickerController();
  final vedioPickerController = VideoPickerController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp, bottom: 20.sp),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0.5.sp,
                    blurRadius: 5.sp)
              ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 66.h,
                              width: 70.w,
                              child: Image.asset(
                                'assets/images/Mask  8@3x.png',
                                height: 66.sp,
                              ),
                            ),
                          ),
                          buildSizeWidth(10),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                addTextGeorgia(
                                    text: '1. Assignment name',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 16.0),
                                buildSizeHeight(10),
                                addTextWorkSansRegular(
                                    text:
                                        'Lorem Ipsum is simply dummy standard dummy text ever...',
                                    textColor: Colors.black,
                                    fontSize: 14.0)
                              ],
                            ),
                          )
                        ],
                      ),
                      buildSizeHeight(10),
                      Row(
                        children: [
                          CustomButton(
                            btnWidth: 107.sp,
                            btnHeight: 40.sp,
                            color: const Color(0xffFEFAF6),
                            child: addTextWorkSansRegular(
                                text: 'Remove',
                                textColor: const Color(0xffE49136),
                                fontSize: 16.0),
                            onPressed: () {
                              Get.to(const Viewassigment_Screen());
                            },
                          ),
                          buildSizeWidth(10),
                          CustomButton(
                            btnWidth: 157.sp,
                            btnHeight: 40.sp,
                            child: addTextWorkSansRegular(
                                text: 'Submit Again',
                                textColor: Colors.white,
                                fontSize: 16.0),
                            onPressed: () {
                              _buildExpandableDialog();
                            },
                          ),
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ]);
      },
    );
  }

  _buildExpandableDialog() {
    Get.defaultDialog(
        title: '',
        titleStyle: const TextStyle(fontSize: 0.0),
        titlePadding: EdgeInsets.zero,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildSizeWidth(30),
                                Container(
                                  width: 68.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: InkWell(
                                    child: const Icon(
                                      Icons.clear,
                                      color: Color(0xffE49136),
                                    ),
                                    onTap: () {
                                      Get.back();
                                    },
                                  ),
                                )
                              ]),
                          Center(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/Group 4@3x.png',
                                  height: 40.sp,
                                ),
                                addTextGeorgia(
                                    text: 'Upload Assignment',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 27.0),
                              ],
                            ),
                          ),
                          buildSizeHeight(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: const Color(0xffFEFAF6),
                                          border: Border.all(
                                              color: const Color(0xffD6C4B4))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: GestureDetector(
                                          onTap:
                                              imagePickerController.pickImage,
                                          child: Image.asset(
                                            'assets/images/photo@3x.png',
                                            height: 30.sp,
                                          ),
                                        ),
                                      )),
                                  addTextWorkSansMedium(
                                      text: 'Image',
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 18.0)
                                ],
                              ),
                              buildSizeWidth(10),
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: const Color(0xffFEFAF6),
                                          border: Border.all(
                                              color: const Color(0xffD6C4B4))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: GestureDetector(
                                          onTap:
                                              vedioPickerController.pickImage,
                                          child: Image.asset(
                                            'assets/images/upload@3x.png',
                                            height: 30.sp,
                                          ),
                                        ),
                                      )),
                                  addTextWorkSansMedium(
                                      text: 'Video',
                                      textColor: const Color(0xff1C1D1F),
                                      fontSize: 18.0)
                                ],
                              ),
                              buildSizeWidth(10),
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: const Color(0xffFEFAF6),
                                          border: Border.all(
                                              color: const Color(0xffD6C4B4))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Image.asset(
                                          'assets/images/font@3x.png',
                                          height: 27.sp,
                                        ),
                                      )),
                                  addTextWorkSansMedium(
                                      text: 'Test',
                                      textColor: const Color(0xffE49136),
                                      fontSize: 18.0)
                                ],
                              ),
                            ],
                          ),
                          buildSizeHeight(10),
                          CustomTextField(
                            maxLine: 4,
                            textInputType: TextInputType.name,
                            hintText: 'Assignment',
                          ),
                        ],
                      ),
                      buildSizeHeight(10),
                      CustomButton(
                        child: addTextWorkSansRegular(
                            text: 'Next',
                            textColor: Colors.white,
                            fontSize: 16.0),
                        onPressed: () {
                          Get.to(const Viewassigment_Screen());
                        },
                      ),
                    ])),
          ],
        ));
  }
}
