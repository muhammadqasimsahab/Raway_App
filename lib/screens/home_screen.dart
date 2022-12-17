import 'package:al_right_flutter/widgets/button_widgets.dart';
import 'package:al_right_flutter/widgets/container_widgets.dart';
import 'package:al_right_flutter/widgets/drop_down_Station.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/drop_down_trainID.dart';
import '../widgets/text_feild_widget.dart';
import 'delay_screen.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  TimeOfDay _timeOfDay2 = TimeOfDay.now();

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  void _showTimePicker2() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay2 = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff267227),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        title: const Center(
          child: Text(
            'Railway Input App',
            style: TextStyle(
                color: Color(0xff267227),
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 15.w, left: 15.w),
          child: Column(
            children: [
              SizedBox(height: 100.h),
              DropDownTrain(),
              SizedBox(height: 30.h),
              DropDownStation(),
              SizedBox(height: 100.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    height1: 50.h,
                    width1: 150.w,
                    buttontext: 'Arrival Time',
                    buttontextcolor: Color(0xff267227),
                    buttoncolor: Colors.white,
                    onpress: _showTimePicker,
                  ),
                  Button(
                    height1: 50.h,
                    width1: 150.w,
                    buttontext: 'Departure Time',
                    buttontextcolor: Color(0xff267227),
                    buttoncolor: Colors.white,
                    onpress: _showTimePicker2,
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.only(right: 12.w, left: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyContainer(
                        height1: 90.h,
                        width1: 120.w,
                        buttontext: _timeOfDay.format(context).toString(),
                        buttontextcolor: Colors.black),
                    MyContainer(
                      width1: 120.w,
                      height1: 90.h,
                      buttontext: _timeOfDay2.format(context).toString(),
                      buttontextcolor: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              MyTextFieldWidget(title: 'Enter Delay time here'),
              SizedBox(
                height: 100.h
              ),
              Padding(
                padding: EdgeInsets.only(right: 4.w, left: 4.w),
                child: Button(
                  height1: 50,
                  width1: double.infinity,
                  buttontextcolor: Color(0xff267227),
                  buttontext: 'Next',
                  buttoncolor: Colors.white,
                  onpress: () {Get.to(DelayScreen());},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
