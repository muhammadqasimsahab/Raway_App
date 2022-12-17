import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Button extends StatelessWidget {
  var buttontext;
  var buttoncolor;
  var buttontextcolor;

  Function() onpress;
  double height1;
  double width1;

  Button({
    Key? key,
    required this.height1,
    required this.width1,
    this.buttontext,
    this.buttoncolor,
    this.buttontextcolor,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height1,
      width: width1,
      child: TextButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttoncolor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: const BorderSide(
                color: Colors.white38,
              )),
          // elevation: 15.0,
        ),
        child: Text(
          buttontext,
          style: TextStyle(fontSize: 18.sp, color: buttontextcolor),
        ),
      ),
    );
  }
}
