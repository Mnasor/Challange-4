import 'package:challange_4/Model/Cat%20fact.dart';
import 'package:challange_4/Services/ApiClass%20Method.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  Rx<CatFact> myfact = CatFact().obs;
  @override
  // void onInit() {
  //   // TODO: implement onInit
  //   super.onInit();
  //   fetchCat();
  // }

  fetchCat() async {
    var Alldata = await ApiClass.methodGet();
    myfact.value = CatFact.fromJson(json: Alldata);
    print(Alldata);
  }
}
