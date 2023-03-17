import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:snapchat_clone/product/Services/nav_bar_props.dart';

import 'TabBarTextButton.dart';

class AddFriendButton extends ConsumerWidget {
  const AddFriendButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TabBarTextButton(
          textbutton: TextButton(
            child: const Icon(Icons.person_add, color: Colors.white , ), 
            onPressed: (){
              ref.read(navBarPropsProvider).mainTabController?.animateTo(4);
            },
          )
        );
  }
}
