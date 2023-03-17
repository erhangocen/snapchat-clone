import 'package:flutter/material.dart';
import 'package:snapchat_clone/product/Widgets/CustomSheet.dart';

class ChatSheetData extends StatelessWidget {
  const ChatSheetData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: 
         [
          SheetButton(text: "New Chat", onTap: (){}),
          const Divider(),
          SheetButton(text: "New Shortcut", onTap: (){}),
          const Divider(),
          SheetButton(text: "Manage Chats", onTap: (){}),
          const Divider(),
          SheetButton(text: "Manage Friendships", onTap: (){}),
          const Divider(),
          SheetButton(text: "Customize Best Friend Emojis", onTap: (){})
          
        ],
      ),
    );
  }
}
