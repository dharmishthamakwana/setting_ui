import 'package:flutter/cupertino.dart';

class Homeprovider extends ChangeNotifier {
  bool on = false;
  bool off = false;
  bool onoff = false;

  void click(bool value) {
    on = value;
    notifyListeners();
  }

  void clickoff(bool value) {
    off = value;
    notifyListeners();
  }
  void click1(bool value)
  {
    onoff= value;
    notifyListeners();
  }

}
