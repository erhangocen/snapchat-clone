import 'package:flutter/material.dart';
import 'package:snapchat_clone/product/ProjectConsts/SectionEnums.dart';
import 'package:snapchat_clone/product/Services/service.dart';
import 'package:snapchat_clone/product/Widgets/BottomNavBar.dart';
import 'package:snapchat_clone/views/CameraView.dart';
import 'package:snapchat_clone/views/DiscoverView.dart';
import 'package:snapchat_clone/views/LocationView.dart';
import 'package:snapchat_clone/views/StoriesView.dart';

import '../product/Models/user.dart';
import '../product/ProjectConsts/BottomAppBarItems.dart';
import '../product/Widgets/PpButton.dart';
import '../product/Widgets/SearchButton.dart';
import '../product/Widgets/TabBarTextButton.dart';
import 'ChatListView.dart';


class SnapChatClone extends StatefulWidget {
  const SnapChatClone({Key? key}) : super(key: key);

  @override
  State<SnapChatClone> createState() => _SnapChatCloneState();
}

class _SnapChatCloneState extends State<SnapChatClone> with TickerProviderStateMixin{

  int index = 2;
  late User currentUser;
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: BottomAppBarItems.tabs.length, vsync: this, initialIndex: index);
    currentUser = UserOperations.getCurrentUser();
  }

  @protected set setTabController(int index){
    _tabController.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {

    _tabController.addListener(() {
      setState(() {
        index = _tabController.index;
      });
    },);

    return DefaultTabController(length: 5, child: Scaffold(
      appBar: chatViewAppBar(currentUser),
      bottomNavigationBar: BottomNavBar(index: index, tabController: _tabController),
      body: TabBarView(
        controller: _tabController,
        children: const [   
        LocationView(),
        ChatListView(),
        CameraView(),
        StoriesView(),
        DiscoverView(),

      ],),
    ));
  }

  AppBar chatViewAppBar(User user) {
    return AppBar(
      title: Text(Sections.values.elementAt(index).name),
      leadingWidth: 150,
      leading: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          TabBarTextButton(
          textbutton: PpButton(user: user,)
        ),
        const TabBarTextButton(
          textbutton: SearchButton()
        ),
        ],
      ),
      actions: [
        TabBarTextButton(
          textbutton: TextButton(
            child: const Icon(Icons.person_add, color: Colors.white , ), 
            onPressed: (){},
          )
        ),
        TabBarTextButton(
          textbutton: TextButton(
            child: const Icon(Icons.more_horiz, color: Colors.white ,), 
            onPressed: (){},
          ),
        ),
      ],
    );
  }
}
