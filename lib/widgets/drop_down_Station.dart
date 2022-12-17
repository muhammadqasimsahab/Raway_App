import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownStation extends StatefulWidget {
  const DropDownStation({Key? key}) : super(key: key);

  @override
  State<DropDownStation> createState() => _DropDownStationState();
}

class _DropDownStationState extends State<DropDownStation> {
  String dropdownValue = 'Select Station Here';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration:  BoxDecoration(
        color:  Color(0xffffffff),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: const [
          BoxShadow(
            blurRadius: 1.0,
          ),
        ],
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 20.r),
        child: DropdownButton<String>(
          hint: Text(dropdownValue),
          underline: Container(),
          focusColor: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          // value: dropdownValue,
          items: <String>[
            'Akbar Express',
            'Allama Iqbal Express',
            'Attock Passenger',
            'Awam Express',
            'Abaseen Express',
            'Amruka Mixed '
          ].map<DropdownMenuItem<String>>((String value) {
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