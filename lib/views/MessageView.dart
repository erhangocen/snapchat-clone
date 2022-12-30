import 'package:flutter/material.dart';

import '../product/Models/user.dart';

class MessageView extends StatelessWidget {
  const MessageView({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.nickName),
      ),
      body: Center(
        child: Text("${user.nickName} Message Page"),
      ),
    );
  }
}
