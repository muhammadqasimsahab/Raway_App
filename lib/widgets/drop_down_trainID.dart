import 'package:al_right_flutter/AppLayer/Observer.dart';
import 'package:al_right_flutter/App_View/Home_Screen/TrainModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../AppLayer/Provider.dart';
import '../App_View/Home_Screen/HomeManager.dart';

class DropDownTrain extends StatefulWidget {
  const DropDownTrain({Key? key}) : super(key: key);

  @override
  State<DropDownTrain> createState() => _DropDownTrainState();
}

class _DropDownTrainState extends State<DropDownTrain> {
  String dropdownValue = 'Train ID';

  @override
  Widget build(BuildContext context) {
    HomeManager manager = Provider.of(context).fetch(HomeManager);
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
        padding: EdgeInsets.only(left: 20.w),
        child: Observer<List<TrainModel>>(
          stream: manager.trainList,
          onSuccess: (context, data) {
            print("on success----");
            List<TrainModel> trianList = data;
            print("getting list ${trianList[0].data.toList().toString()}");
            List<String> listNames = List.filled(trianList[0].data.length, "");

            for (int i = 0; i < trianList[0].data.length; i++) {
              listNames[i] = trianList[0].data[i].trainName;
            }
            print("on success----2");
            return DropdownButton<String>(
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
            );
          },
          onWaiting: (context) {
            print("on success");
            return LinearProgressIndicator();
          },
          onError: (context) {
            return Text("Train Data not loading");
          },
        ),
      ),
    );
  }
}
