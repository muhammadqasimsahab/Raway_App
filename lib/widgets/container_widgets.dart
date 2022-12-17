import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyContainer extends StatelessWidget {
  var buttontext;
  var buttontextcolor;

  double width1;
  double height1;

  MyContainer({
    Key? key,
    this.buttontext,
    this.buttontextcolor,
    required this.height1,
    required this.width1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height1,
        width: width1,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          boxShadow: [
            BoxShadow(
              blurRadius: 1.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
        child: Center(
          child: Text(
            buttontext,
            style: TextStyle(fontSize: 18.sp, color: buttontextcolor),
          ),
        ));
  }
}
