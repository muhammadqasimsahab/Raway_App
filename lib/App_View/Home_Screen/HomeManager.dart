import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

import '../../AppLayer/Overseer.dart';

import 'HomeService.dart';
import 'TrainModel.dart';

class HomeManager {
  final BehaviorSubject<List<TrainModel>> _product =
      BehaviorSubject<List<TrainModel>>();

  Stream<List<TrainModel>> get trainList async* {
    print("-- get data in browse");
    yield await HomeService.browse();
  }

  Stream<bool> get saveActivity async* {
    yield await HomeService.saveActivity();
  }

  HomeManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));
  }
}
