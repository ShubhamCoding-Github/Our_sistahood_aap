import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../Utility/utils.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  var popupMenuItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffFCF2F4),
          title: Row(
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
                  text: 'Notification',
                  textColor: const Color(0xff1C1D1F),
                  fontSize: 18.0),
            ],
          ),
          actions: [
            PopupMenuButton(
              position: PopupMenuPosition.under,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.sp)),
              icon: Image.asset(
                'assets/images/7124025_horizontal_3 dots_dots_icon@3x.png',
                height: 5.sp,
              ),
              color: const Color(0xffAF5143),
              onSelected: (value) {
                onMenuItemSelected(value);
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: SampleItems.itemOne.index,
                  child: addTextWorkSansRegular(
                      text: 'Mark As All Read',
                      textColor: Colors.white,
                      fontSize: 15.0),
                ),
                PopupMenuItem(
                  value: SampleItems.itemTwo.index,
                  child: addTextWorkSansRegular(
                      text: 'Mark As All Unread',
                      textColor: Colors.white,
                      fontSize: 15.0),
                ),
                PopupMenuItem(
                  value: SampleItems.itemThree.index,
                  child: addTextWorkSansRegular(
                      text: 'Delete All',
                      textColor: Colors.white,
                      fontSize: 15.0),
                ),
              ],
            ),
            buildSizeWidth(20),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                // padding: EdgeInsets.all(15.sp),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5.sp,
                          blurRadius: 5.sp)
                    ],
                    // border: Border.all(color: CustomColor.primaryColor),
                    color: Colors.white),
                child: Slidable(
                  key: const ValueKey(0),
                  // The start action pane is the one at the left or the top side.
                  endActionPane: ActionPane(
                    extentRatio: 0.2,
                    // A motion is a widget used to control how the pane animates.
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          // controller.deleteNotifictionsAPI(
                          //     context,
                          //     controller
                          //         .notificationData[index]
                          //         .notificationId);
                        },
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xffE49136),
                        icon: Icons.delete,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        addTextWorkSansRegular(
                            text:
                                'Lorem Ipsum is simply dummy text of printing and typesetting industry.',
                            textColor: const Color(0xff1C1D1F),
                            fontSize: 15.0),
                        buildSizeHeight(20),
                        addTextWorkSansRegular(
                            text: '2 day\'s ago',
                            textColor: const Color(0xff686868),
                            fontSize: 14.0)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  onMenuItemSelected(int value) {
    setState(() {
      popupMenuItemIndex = value;
    });
    print(popupMenuItemIndex);
    if (value == SampleItems.itemOne.index) {
    } else if (value == SampleItems.itemTwo.index) {}
  }
}

enum SampleItems { itemOne, itemTwo, itemThree }
