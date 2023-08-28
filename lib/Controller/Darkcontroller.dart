import 'package:flutter/material.dart';

class Darkcontroller extends ChangeNotifier{
  Brightness bg=Brightness.light;
  change() {
    List data=[];
    if (bg==Brightness.light) {
      bg = Brightness.dark;
    }
    else if (bg == Brightness.dark) {
      bg = Brightness.light;
    }
    notifyListeners();
  }
}