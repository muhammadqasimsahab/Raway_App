import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownTrain extends StatefulWidget {
  const DropDownTrain({Key? key}) : super(key: key);

  @override
  State<DropDownTrain> createState() => _DropDownTrainState();
}

class _DropDownTrainState extends State<DropDownTrain> {
  String dropdownValue = 'Train ID';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color(0xffffffff),
        boxShadow: const [
          BoxShadow(
            blurRadius: 1.0,
          ),
        ],
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 20.w),
        child: DropdownButton<String>(
          hint: Text(dropdownValue),
          underline: Container(),
          focusColor: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          // value: dropdownValue,
          items: <String>['110DN', '101UP', '102DN', '103UP', '105UP', '108DN ']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
        ),
      ),
    );
  }
}
