import 'package:flutter/material.dart';
import 'package:snapchat_clone/product/ProjectConsts/BottomNavBarItems.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key, required this.index,required this.onPressed}) : super(key: key);

  final int index;
  final ValueSetter<int> onPressed;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  late int index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = widget.index;
  }
  
  @override
  void didUpdateWidget(covariant BottomNavBar oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    index = widget.index;
  }

  void _navBarOnTap(int value){
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: widget.onPressed,
        currentIndex: index,
        backgroundColor: Colors.transparent,
        items: BottomNavBarItems.bottomNavigationBarItems
      );
  }
}
