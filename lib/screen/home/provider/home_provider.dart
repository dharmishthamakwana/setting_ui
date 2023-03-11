import 'package:flutter/cupertino.dart';

class Homeprovider extends ChangeNotifier {
  bool on = false;
  bool off = false;

  void click(bool value) {
    on = value;
    notifyListeners();
  }

  void clickoff(bool value) {
    off = value;
    notifyListeners();
  }
}
