import 'package:flutter/material.dart';

class BottomAppBarItems {
  static List<Tab> tabs = [
    const Tab(icon: Icon(Icons.location_on_outlined)),
    const Tab(icon: Icon(Icons.chat_bubble_outline_rounded)),
    const Tab(icon: Icon(Icons.camera_alt_outlined)),
    const Tab(icon: Icon(Icons.group_outlined)),
    const Tab(icon: Icon(Icons.menu_rounded)),
  ];

  static List<String> tabLabels = ["Location", "Chat", "Camera", "Stories", "Discover" ];
}

