import 'package:flutter/material.dart';
import 'package:snapchat_clone/product/ProjectConsts/BottomNavBarItems.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int index = 1;

  void _navBarOnTap(int value){
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: _navBarOnTap,
        currentIndex: index,
        backgroundColor: Colors.transparent,
        items: BottomNavBarItems.bottomNavigationBarItems
      );
  }
}
