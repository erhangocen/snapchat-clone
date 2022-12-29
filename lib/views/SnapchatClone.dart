
import 'package:flutter/material.dart';
import 'package:snapchat_clone/product/ProjectConsts/BottomNavBarItems.dart';
import 'package:snapchat_clone/product/Services/service.dart';
import 'package:snapchat_clone/views/ChatView.dart';

import '../product/Models/user.dart';
import '../product/ProjectConsts/constTexts.dart';
import '../product/Widgets/BottomNavBar.dart';
import '../product/Widgets/PpButton.dart';
import '../product/Widgets/SearchButton.dart';
import '../product/Widgets/TabBarTextButton.dart';

class SnapChatClone extends StatefulWidget {
  const SnapChatClone({Key? key}) : super(key: key);

  @override
  State<SnapChatClone> createState() => _SnapChatCloneState();
}

class _SnapChatCloneState extends State<SnapChatClone> {

  int index = 1;
  late User currentUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentUser = UserOperations.getCurrentUser();
  }

  void deneme(int deneme){
    setState(() {
      index = deneme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatViewAppBar(currentUser, ConstTexts.chat),
      bottomNavigationBar: BottomNavBar(index: index, onPressed: deneme),
      body: const ChatView()
    );
  }

  AppBar chatViewAppBar(User user, String title) {
    return AppBar(
      title: Text(BottomNavBarItems.bottomNavigationBarItems[index].label.toString()),
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
