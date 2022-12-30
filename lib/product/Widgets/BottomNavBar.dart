import 'package:flutter/material.dart';
import 'package:snapchat_clone/product/ProjectConsts/BottomAppBarItems.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key, required this.index, required this.tabController,}) : super(key: key);

  final int index;
  final TabController tabController;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  late int index;
  late final TabController _tabController;

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
    return BottomAppBar(
      color: Colors.transparent,
      child: TabBar(
        controller: widget.tabController,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: BottomAppBarItems.tabs
      ),
      );
  }
}
