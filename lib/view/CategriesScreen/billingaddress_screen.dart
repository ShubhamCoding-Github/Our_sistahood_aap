import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utility/custum_button.dart';
import '../../Utility/custum_textfield.dart';
import '../../Utility/utils.dart';

class Billingaddress_Screen extends StatefulWidget {
  const Billingaddress_Screen({Key? key}) : super(key: key);

  @override
  State<Billingaddress_Screen> createState() => _Billingaddress_ScreenState();
}

class _Billingaddress_ScreenState extends State<Billingaddress_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                  text: 'Billing Address',
                  textColor: const Color(0xff1C1D1F),
                  fontSize: 17.0),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addTextWorkSansMedium(
                  text: 'House number',
                  textColor: const Color(0xff1C1D1F),
                  fontSize: 16.0),
              buildSizeHeight(10),
              CustomTextField(
                hintText: 'House number',
              ),
              buildSizeHeight(15),
              addTextWorkSansMedium(
                  text: 'Street name',
                  textColor: const Color(0xff1C1D1F),
                  fontSize: 16.0),
              buildSizeHeight(10),
              CustomTextField(
                hintText: 'Street name',
              ),
              buildSizeHeight(10),
              addTextWorkSansMedium(
                  text: 'Suburb',
                  textColor: const Color(0xff1C1D1F),
                  fontSize: 16.0),
              buildSizeHeight(10),
              CustomTextField(
                hintText: 'Suburb',
              ),
              buildSizeHeight(15),
              addTextWorkSansMedium(
                  text: 'State',
                  textColor: const Color(0xff1C1D1F),
                  fontSize: 16.0),
              buildSizeHeight(10),
              CustomTextField(
                readOnly: true,
                hintText: 'State',
                suffixIcon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xffE49136),
                ),
              ),
              buildSizeHeight(15),
              addTextWorkSansMedium(
                  text: 'Country',
                  textColor: const Color(0xff1C1D1F),
                  fontSize: 16.0),
              buildSizeHeight(10),
              CustomTextField(
                readOnly: true,
                hintText: 'Country',
                suffixIcon: const Icon(Icons.keyboard_arrow_down,
                    color: Color(0xffE49136)),
              ),
              const Spacer(),
              CustomButton(
                child: addTextWorkSansRegular(
                    text: 'Save', textColor: Colors.white, fontSize: 16.0),
                onPressed: () {
                  // Get.to(Checkout_Screen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
