import 'dart:convert';

import 'package:extra_json/screen/home/modal/homeModal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class HomeProvider extends ChangeNotifier {
  int i = 0;
  int imgindex = 0;

  void change(int index) {
    i = index;
    notifyListeners();
  }

  NewsModel? newsModel;

  Future<void> newsJsonParsing() async {
    var jsonString = await rootBundle.loadString("assets/json/extra.json");
    var json = jsonDecode(jsonString);
    newsModel = NewsModel().newsFromJson(json);
    notifyListeners();
  }
}
