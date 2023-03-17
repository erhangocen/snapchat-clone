import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavBarProps extends ChangeNotifier{

  TabController? mainTabController;

  void setController(int length, TickerProvider widget){
    TabController(length: length, vsync: widget);
  }

}

final navBarPropsProvider = ChangeNotifierProvider((ref){
  return NavBarProps();
});