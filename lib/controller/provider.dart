import 'package:flutter/material.dart';

class homeprovidre extends ChangeNotifier{
  
  bool clr=false;
  void colorchanging(){
    clr=!clr;
    notifyListeners();
  }
}