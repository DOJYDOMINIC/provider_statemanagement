import 'package:flutter/widgets.dart';

class Timerinfo extends ChangeNotifier {
  int _remainingTime = 0;
  int getRemainingTime() { return _remainingTime;}


  updateRemaintime() {
    _remainingTime++;
      notifyListeners();
  }



}

