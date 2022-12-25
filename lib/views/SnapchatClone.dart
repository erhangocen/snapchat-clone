import 'package:flutter/material.dart';
import 'package:snapchat_clone/Views/ChatView.dart';
import 'package:snapchat_clone/core/defaultPhotos.dart';

import '../product/ProjectConsts/constTexts.dart';
import '../product/Widgets/BottomNavBar.dart';
import '../product/Widgets/PpButton.dart';
import '../product/Widgets/SearchButton.dart';
import '../product/Widgets/TabBarTextButton.dart';

class SnapChatClone extends StatelessWidget {
  const SnapChatClone({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatViewAppBar(DefaultPhotoPaths.defaultPp, ConstTexts.chat),
      bottomNavigationBar: const BottomNavBar(),
      body: const ChatView(),
    );
  }


  AppBar chatViewAppBar(String ppPath, String title) {
    return AppBar(
      title: Text(title),
      leadingWidth: 150,
      leading: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          TabBarTextButton(
          textbutton: PpButton(ppPath: ppPath,)
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
