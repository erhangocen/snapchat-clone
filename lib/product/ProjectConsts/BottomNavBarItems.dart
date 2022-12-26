import 'package:flutter/material.dart';

class BottomNavBarItems {
  static List<BottomNavigationBarItem> bottomNavigationBarItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: "Location", tooltip: "ss"),
    const BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded), label: "Chat"),
    const BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined), label: "Camera"),
    const BottomNavigationBarItem(icon: Icon(Icons.group_outlined), label: "Stories"),
    const BottomNavigationBarItem(icon: Icon(Icons.menu_rounded), label: "Discover"),
  ];

  
}
