import 'package:flutter/material.dart';

mixin NavigatorManager{
  void navigateToWidget(BuildContext context, Widget widget){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return widget;
      },
      settings: const RouteSettings()
      ),
    );
  }
}