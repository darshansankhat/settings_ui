
import 'package:flutter/foundation.dart';

class A_Provider_screen extends ChangeNotifier
{
  bool on=false;
  bool on1=false;
  bool on2=false;

  void onChange(bool value)
  {
    on=value;
    notifyListeners();
  }
  void onChange1(bool value)
  {
    on1=value;

    notifyListeners();
  }
  void onChange2(bool value)
  {
    on2=value;

    notifyListeners();
  }
}