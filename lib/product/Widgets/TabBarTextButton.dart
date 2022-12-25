import 'package:flutter/material.dart';

class TabBarTextButton extends StatelessWidget {
  const TabBarTextButton({
    Key? key, required this.textbutton,
  }) : super(key: key);

  final Widget textbutton;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 2),
      width: 50, 
      height: 50,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(19, 255, 255, 255)),
      child: textbutton,
    );
  }
}