import 'package:flutter/material.dart';
import 'package:snapchat_clone/product/ProjectConsts/ConstTexts.dart';

class BottomNavBarItems {
  static List<BottomNavigationBarItem> bottomNavigationBarItems = [
    BottomNavigationBarItem(icon: const Icon(Icons.location_on_outlined), label: ConstTexts.location),
    BottomNavigationBarItem(icon: const Icon(Icons.chat_bubble_outline_rounded), label: ConstTexts.chat),
    BottomNavigationBarItem(icon: const Icon(Icons.camera_alt_outlined), label: ConstTexts.camera),
    BottomNavigationBarItem(icon: const Icon(Icons.group_outlined), label: ConstTexts.stories),
    BottomNavigationBarItem(icon: const Icon(Icons.menu_rounded), label: ConstTexts.discover),
  ];

  
}
