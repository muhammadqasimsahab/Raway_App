import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/button_widgets.dart';
import '../widgets/drop_down_Station.dart';
import '../widgets/drop_down_trainID.dart';

class DelayScreen extends StatelessWidget {
  const DelayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff267227),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff267227),
          ),
        ),
        leadingWidth: 20.w,
        backgroundColor: const Color(0xffffffff),
        title: Center(
          child: Text(
            'Add Train Delay',
            style: TextStyle(
                color: Color(0xff267227),
                fontSize: 18.sp,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80.h),
              DropDownTrain(),
              SizedBox(height: 30.h),
              DropDownStation(),
              SizedBox(height: 80.h),
              Card(
                elevation: 3,
                child: ClipPath(
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Delay Reason',
                      ),
                      maxLines: 4,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Button(
                  height1: 60.h,
                  width1: 180.w,
                  buttoncolor: Colors.white,
                  buttontextcolor: Color(0xff267227),
                  buttontext: 'Submit',
                  onpress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
