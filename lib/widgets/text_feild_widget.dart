import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextFieldWidget extends StatelessWidget {
  final String title;


  MyTextFieldWidget({
    Key? key,
    required this.title,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 180,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            blurRadius: 2.0.r,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: Center(
        child: TextFormField(
          //keyboardType: TextInputType.
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                  const BorderSide(width: 0, color: Colors.transparent),
                  borderRadius: BorderRadius.circular(8.r)),
              hintText: title,
              fillColor: const Color(0xffffffff),
              filled: true,
              hintStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h)),
        ),
      ),
    );
  }
}
