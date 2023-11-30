import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/Utility/utils.dart';
import 'package:our_sistahood_app/view/CategriesScreen/billingaddress_screen.dart';
import 'package:our_sistahood_app/view/dashboard/dashboard.dart';
import 'package:our_sistahood_app/view/dashboard/mycourses_screen.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
                  text: 'Checkout',
                  textColor: Color(0xff1C1D1F),
                  fontSize: 17.0),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: Column(
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
                                    text: 'Billing Address',
                                    textColor: const Color(0xff1C1D1F),
                                    fontSize: 20.0),
                              ],
                            ),
                            InkWell(
                              child: addTextWorkSansRegular(
                                text: 'Change',
                                textColor: const Color(0xffE49136),
                                fontSize: 16.0,
                                textDecoration: TextDecoration.underline,
                              ),
                              onTap: () {
                                Get.to(const Billingaddress_Screen());
                              },
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.place,
                              color: Color(0xffAF5143),
                            ),
                            addTextWorkSansRegular(
                                text: '123, lorem ipsum, dummy area',
                                textColor: Color(0xff474747),
                                fontSize: 15.0)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                buildSizeHeight(20),
                Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFCF2F4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.all(20.sp),
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
                                  text: 'Payment Method',
                                  textColor: const Color(0xff1C1D1F),
                                  fontSize: 20.0),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Radio(
                                        activeColor: const Color(0xffE49136),
                                          value: 1,
                                          groupValue:_selectedValue,
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedValue = value!;
                                            });
                                            print(value); //selected value
                                          }),
                                      addTextWorkSansRegular(
                                          text: 'Credit/Debit Card',
                                          textColor: const Color(0xff474747),
                                          fontSize: 16.0),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/images/visa@3x.png',
                                    height: 25.sp,
                                  ),
                                  Image.asset(
                                    'assets/images/MasterCard@3x.png',
                                    height: 25.sp,
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Color(0xffFABFC2),
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Radio(
                                          activeColor: const Color(0xffE49136),
                                          value: 2,
                                          groupValue:_selectedValue,
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedValue = value!;
                                            });
                                            print(value); //selected value
                                          }),
                                      addTextWorkSansRegular(
                                          text: 'Online Banking',
                                          textColor: const Color(0xff474747),
                                          fontSize: 16.0),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/images/stripe@3x.png',
                                    height: 21.sp,
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Color(0xffFABFC2),
                                thickness: 1,
                              ),
                              addTextWorkSansMedium(
                                  text: 'Name on card',
                                  textColor: Color(0xff1C1D1F),
                                  fontSize: 16.0),
                              buildSizeHeight(15),
                              CustomTextField(
                                hintText: 'Name on card',
                              ),
                              buildSizeHeight(15),
                              addTextWorkSansMedium(
                                  text: 'Card number',
                                  textColor: Color(0xff1C1D1F),
                                  fontSize: 16.0),
                              buildSizeHeight(15),
                              CustomTextField(
                                hintText: '1234 5678 9012 3456',
                                suffixIcon: Image.asset(
                                  'assets/images/nocard@3x.png',
                                  height: 18.sp,
                                ),
                              ),
                              buildSizeHeight(15),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        addTextWorkSansMedium(
                                            text: 'Expiry Date',
                                            textColor: Color(0xff1C1D1F),
                                            fontSize: 16.0),
                                        buildSizeHeight(10),
                                        CustomTextField(
                                          hintText: 'MM/YY',
                                        ),
                                      ],
                                    ),
                                  ),
                                  buildSizeWidth(10),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        addTextWorkSansMedium(
                                            text: 'CVV',
                                            textColor: Color(0xff1C1D1F),
                                            fontSize: 16.0),
                                        buildSizeHeight(10),
                                        CustomTextField(
                                          hintText: 'CVV',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          child: Container(
            height: 65.h,
            color: const Color(0xff3B2A27),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        addTextWorkSansBold(
                            text: '\$2100',
                            textColor: Colors.white,
                            fontSize: 26.0),
                        Row(
                          children: [
                            addTextWorkSansBold(
                                text: '\$2700',
                                textColor: const Color(0xffAF5143),
                                fontSize: 18.0),
                            buildSizeWidth(10),
                            addTextWorkSansBold(
                                text: '24% off',
                                textColor: const Color(0xffAF5143),
                                fontSize: 18.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    btnHeight: 45.h,
                    btnWidth: 151.w,
                    child: addTextWorkSansRegular(
                        text: 'Pay Now',
                        textColor: Colors.white,
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
      ),
    );
  }

  _buildExpandableDialog() {
    Get.defaultDialog(
        title: '',
        titleStyle: TextStyle(fontSize: 0.0),
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
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: addTextGeorgia(
                                  text: 'Thank You',
                                  textColor: const Color(0xff1C1D1F),
                                  fontSize: 27.0),
                            ),
                          ],
                        ),
                      ),
                      buildSizeHeight(10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: addTextWorkSansRegular(
                            text:
                                'Your course have successfully purchased with us. Now you can download or learn any where any time.',
                            textColor: Color(0xff474747),
                            fontSize: 15.0,
                            textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: const EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xffFEFAF6),
                              border: Border.all(color: Color(0xffD6C4B4))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                addTextWorkSansBold(
                                    text: 'Course Info',
                                    textColor: Color(0xff503E3B),
                                    fontSize: 17.0),
                                addTextWorkSansMedium(
                                    text:
                                        'Competitive Strategy law for all students',
                                    textColor: Color(0xff503E3B),
                                    fontSize: 14.0,
                                    textAlign: TextAlign.center),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    addTextWorkSansBold(
                                        text: 'AUD',
                                        textColor: Color(0xffAF5143),
                                        fontSize: 25.0),
                                    addTextWorkSansBold(
                                        text: '2100',
                                        textColor: Color(0xffAF5143),
                                        fontSize: 38.0),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              child: addTextWorkSansRegular(
                                  text: 'Back to Home',
                                  textColor: Colors.white,
                                  fontSize: 16.0),
                              onPressed: () {
                                Get.to(Dashboard());
                              },
                            ),
                          ),
                          buildSizeWidth(10),
                          Expanded(
                            child: CustomButton(
                              child: addTextWorkSansRegular(
                                  text: 'My Cources',
                                  textColor: Colors.white,
                                  fontSize: 16.0),
                              onPressed: () {
                                Get.to(Mycourses_Screen());
                              },
                            ),
                          ),
                        ],
                      )
                    ])),
          ],
        ));
  }
}
