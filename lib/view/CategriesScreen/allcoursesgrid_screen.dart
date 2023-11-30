import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/CategriesScreen/course_list.dart';
import 'package:our_sistahood_app/view/CategriesScreen/favcourse_list.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';
import '../../Utility/utils.dart';

class Allcoursesgridscreen extends StatefulWidget {
  const Allcoursesgridscreen({Key? key}) : super(key: key);

  @override
  State<Allcoursesgridscreen> createState() => _AllcoursesgridscreenState();
}

class _AllcoursesgridscreenState extends State<Allcoursesgridscreen> {
  int rating = 0;
  List<bool> selectedfeature = [];
  List<bool> select = [];
  List<bool> selectedTopic = [];

  List<String> topicsList = [
    'Arts and Humanities',
    'Business',
    'Computer Science',
    'Data Science',
    'Health & Fitness',
    'Information Technology',
    'Math and Logic',
  ];
  List<String> durationList = [
    '0-1 Hour',
    '1-3 Hours',
    '3-6 Hours',
    '6-17 Hours',
    '17+ Hours',
  ];
  List<String> featureList = [
    'Subtitles',
    'Quizzes',
    'Coding Exercises',
    'Practice Tests',
  ];
  int selectedindex = 0;
  int index = 0;
  List<Map<String, dynamic>> PriceScreen = [
    {
      "title": 'Z to A Alphabetical',
      "icon": 'assets/images/sort-alphabetical-descending-icon@3x.png',
    },
    {
      "title": 'A to Z Alphabetical',
      "icon": 'assets/images/Group 56@3x.png',
    },
    {
      "title": 'Price High to Low',
      "icon": 'assets/images/descending-filter-icon@3x.png',
    },
    {
      "title": 'Price Low to High',
      "icon": 'assets/images/low.png',
    },
  ];
  @override
  void initState() {
    selectedTopic = List.filled(topicsList.length, false);
    select = List.filled(durationList.length, false);
    selectedfeature = List.filled(featureList.length, false);
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: 110,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFCF2F4),
        title: Column(
          children: [
            Row(
              children: [
                InkWell(
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xffE49136),
                    size: 20,
                  ),
                  onTap: () {
                    Get.back();
                  },
                ),
                buildSizeWidth(5),
                addTextWorkSansMedium(
                    text: 'Our Courses',
                    textColor: const Color(0xff1C1D1F),
                    fontSize: 20.0),
                const Spacer(),
                SizedBox(
                    width: 20.0,
                    child:
                        Image.asset('assets/images/icons@3x.png', scale: 3.sp)),
                buildSizeWidth(10),
                Image.asset(
                    'assets/images/2203538_alarm_bell_notification_ring_icon@3x.png',
                    scale: 3.2.sp),
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
        child: Column(children: [
          if (index == 0) ...[
            Padding(padding: EdgeInsets.all(20.sp), child: CourseList()),
          ] else if (index == 1) ...[
            const FavcourseList()
          ],
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            buildSizeWidth(30),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0.5.sp,
                        blurRadius: 5.sp)
                  ],
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(23),
                ),
                height: 40.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.sp, right: 20.sp),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/_filter.png',
                        height: 17.sp,
                      ),
                      buildSizeWidth(5),
                      InkWell(
                        child: addTextWorkSansMedium(
                            text: 'Filter',
                            textColor: const Color(0xff1C1D1F),
                            fontSize: 14.0),
                        onTap: () {
                          _settingModalBottomSheet(context);
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                        child: VerticalDivider(
                          color: Color(0xffD6C4B4),
                          thickness: 1,
                        ),
                      ),
                      Image.asset(
                        'assets/images/sort_icon@3x.png',
                        height: 16.sp,
                      ),
                      buildSizeWidth(5),
                      InkWell(
                          child: addTextWorkSansMedium(
                              text: 'Sort',
                              textColor: const Color(0xff1C1D1F),
                              fontSize: 14.0),
                          onTap: () {
                            _settingModalBottomSheet2(context);
                          }),
                    ],
                  ),
                ),
              ),
            ),
            buildSizeWidth(10),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0.5.sp,
                        blurRadius: 5.sp)
                  ],
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(23),
                ),
                height: 40.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.sp, right: 20.sp),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 1;
                          });
                          // print(index);
                        },
                        child: Image.asset(
                          'assets/images/list_icon@3x.png',
                          height: 18.sp,
                          color: index == 1
                              ? const Color(0xffAF5143)
                              : Colors.black,
                        ),
                      ),
                      buildSizeWidth(20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        child: Image.asset(
                          'assets/images/Group 46@3x.png',
                          height: 18.sp,
                          color: index == 0
                              ? const Color(0xffAF5143)
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildSizeWidth(30),
          ],
        ),
      ),
    ));
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return SingleChildScrollView(
            child: StatefulBuilder(builder: (context, set) {
              return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 20.sp,
                      left: 20.sp,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
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
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Align(
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
                                ),
                              )
                            ]),
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
                                    text: 'Filter',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 18.0),
                              ],
                            ),
                            addTextWorkSansRegular(
                              text: 'Clear Filter',
                              textColor: const Color(0xffE49136),
                              fontSize: 16.0,
                              textDecoration: TextDecoration.underline,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            addTextWorkSansMedium(
                                text: 'Topic',
                                textColor: const Color(0xff3B2A27),
                                fontSize: 17.0),
                            InkWell(
                              child: Icon(
                                selectedindex == 1
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: const Color(0xffE49136),
                              ),
                              onTap: () {
                                set(() {
                                  if (selectedindex == 0) {
                                    selectedindex = 1;
                                  } else {
                                    selectedindex = 0;
                                  }

                                  // isTopic = !isTopic;
                                });
                              },
                            )
                          ],
                        ),
                        Visibility(
                          child: buildExpandableContent(),
                          visible: selectedindex == 1,
                        ),
                        const Divider(
                          color: Color(0xffD6C4B4),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            addTextWorkSansMedium(
                                text: 'Subcategory',
                                textColor: const Color(0xff3B2A27),
                                fontSize: 17.0),
                            InkWell(
                              child: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xffE49136),
                              ),
                              onTap: () {},
                            )
                          ],
                        ),
                        const Divider(
                          color: Color(0xffD6C4B4),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            addTextWorkSansMedium(
                                text: 'Ratings',
                                textColor: const Color(0xff3B2A27),
                                fontSize: 17.0),
                            InkWell(
                              child: Icon(
                                selectedindex == 2
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: const Color(0xffE49136),
                              ),
                              onTap: () {
                                print('object');
                                set(() {
                                  if (selectedindex == 0) {
                                    selectedindex = 2;
                                  } else {
                                    selectedindex = 0;
                                  }
                                  // isRating = !isRating;
                                });
                              },
                            ),
                          ],
                        ),
                        Visibility(
                          child: buildExpandableContent2(),
                          visible: selectedindex == 2,
                        ),
                        const Divider(
                          color: Color(0xffD6C4B4),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            addTextWorkSansMedium(
                                text: 'Duration',
                                textColor: const Color(0xff3B2A27),
                                fontSize: 17.0),
                            InkWell(
                              child: Icon(
                                selectedindex == 3
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: const Color(0xffE49136),
                              ),
                              onTap: () {
                                print('object');
                                set(() {
                                  if (selectedindex == 0) {
                                    selectedindex = 3;
                                  } else {
                                    selectedindex = 0;
                                  }
                                  // isduration = !isduration;
                                });
                              },
                            )
                          ],
                        ),
                        Visibility(
                          child: buildExpandableContent3(),
                          visible: selectedindex == 3,
                        ),
                        const Divider(
                          color: Color(0xffD6C4B4),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            addTextWorkSansMedium(
                                text: 'Features',
                                textColor: const Color(0xff3B2A27),
                                fontSize: 17.0),
                            InkWell(
                              child: Icon(
                                selectedindex == 4
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: const Color(0xffE49136),
                              ),
                              onTap: () {
                                // print('object');
                                set(() {
                                  if (selectedindex == 0) {
                                    selectedindex = 4;
                                  } else {
                                    selectedindex = 0;
                                  }
                                  // isfeature = !isfeature;
                                });
                              },
                            )
                          ],
                        ),
                        Visibility(
                          child: buildExpandableContent4(),
                          visible: selectedindex == 4,
                        ),
                        buildSizeHeight(10),
                        CustomButton(
                          child: addTextWorkSansRegular(
                              text: 'Filter',
                              textColor: const Color(0xffFFFFFF),
                              fontSize: 16.0),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        buildSizeHeight(20),
                      ],
                    ),
                  ));
            }),
          );
        });
  }

  buildExpandableContent() {
    return StatefulBuilder(builder: (context, sets) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: topicsList.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -2,
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: const Color(0xffE49136),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                          width: 1.0, color: Color(0xffD6C4B4)),
                    ),
                    value: selectedTopic[index],
                    onChanged: ((value) {
                      selectedTopic[index] = !selectedTopic[index];
                      sets(() {});
                    }),
                  ),
                  buildSizeWidth(10),
                  addTextWorkSansRegular(
                      text: topicsList[index],
                      textColor: const Color(0xff474747),
                      fontSize: 16.0),
                ],
              ),
            ],
          );
        },
      );
    });
  }

  buildExpandableContent2() {
    return (StatefulBuilder(builder: (context, sets) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Checkbox(
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                        vertical: -2,
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      activeColor: const Color(0xffE49136),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) => const BorderSide(
                            width: 1.0, color: Color(0xffD6C4B4)),
                      ),
                      value: rating == index,
                      onChanged: ((value) {
                        rating = index;
                        sets(() {});
                      }),
                    ),
                    buildSizeWidth(5),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/star.png',
                          height: 15.sp,
                        ),
                        buildSizeWidth(5),
                        Image.asset(
                          index >= 1
                              ? 'assets/images/star.png'
                              : 'assets/images/star2.png',
                          height: 15.sp,
                        ),
                        buildSizeWidth(5),
                        Image.asset(
                          index >= 2
                              ? 'assets/images/star.png'
                              : 'assets/images/star2.png',
                          height: 15.sp,
                        ),
                        buildSizeWidth(5),
                        Image.asset(
                          index >= 3
                              ? 'assets/images/star.png'
                              : 'assets/images/star2.png',
                          height: 15.sp,
                        ),
                        buildSizeWidth(5),
                        Image.asset(
                          index >= 4
                              ? 'assets/images/star.png'
                              : 'assets/images/star2.png',
                          height: 15.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ]);
        },
      );
    }));
  }

  buildExpandableContent3() {
    return StatefulBuilder(builder: (context, sets) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: durationList.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -2,
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: const Color(0xffE49136),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                          width: 1.0, color: Color(0xffD6C4B4)),
                    ),
                    value: select[index],
                    onChanged: ((value) {
                      select[index] = !select[index];
                      sets(() {});
                    }),
                  ),
                  buildSizeWidth(5),
                  addTextWorkSansRegular(
                      text: durationList[index],
                      textColor: const Color(0xff474747),
                      fontSize: 16.0),
                ],
              ),
            ],
          );
        },
      );
    });
  }

  buildExpandableContent4() {
    return StatefulBuilder(builder: (context, sets) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: featureList.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -2,
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: const Color(0xffE49136),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                          width: 1.0, color: Color(0xffD6C4B4)),
                    ),
                    value: selectedfeature[index],
                    onChanged: ((value) {
                      selectedfeature[index] = !selectedfeature[index];
                      sets(() {});
                    }),
                  ),
                  buildSizeWidth(5),
                  addTextWorkSansRegular(
                      text: featureList[index],
                      textColor: const Color(0xff474747),
                      fontSize: 16.0),
                ],
              ),
            ],
          );
        },
      );
    });
  }

  void _settingModalBottomSheet2(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.only(
                  right: 20.sp,
                  left: 20.sp,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
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
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Align(
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
                            ),
                          )
                        ]),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Group 4@3x.png',
                          height: 40.sp,
                        ),
                        addTextGeorgia(
                            text: 'Sort',
                            textColor: const Color(0xff1C1D1F),
                            fontSize: 18.0),
                      ],
                    ),
                    buildExpandableContentsort(),
                  ],
                ),
              ));
        });
  }

  buildExpandableContentsort() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: PriceScreen.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    PriceScreen[index]['icon'],
                    height: 27.sp,
                  ),
                ),
                buildSizeWidth(10),
                addTextWorkSansRegular(
                    text: PriceScreen[index]['title'],
                    textColor: const Color(0xff474747),
                    fontSize: 16.0),
              ],
            ),
            buildSizeHeight(20),
          ],
        );
      },
    );
  }
}
