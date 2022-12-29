import 'package:flutter/material.dart';

import '../product/Models/user.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile View'),
      ),
      body: Center(
        child: Text(user.nickName),
      ),
    );
  }
}
