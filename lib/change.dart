
import 'package:flutter/material.dart';
class Counter with ChangeNotifier{

  int count = 0;

  void incriment (){
    count++;
    notifyListeners();
  }

  void decriment (){
    count--;
    notifyListeners();

  }

  void reset (){
    count = 0;
    notifyListeners();
  }

}