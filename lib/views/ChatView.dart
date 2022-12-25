import 'package:flutter/material.dart';
import 'package:snapchat_clone/product/Services/service.dart';
import 'package:snapchat_clone/product/Models/user.dart';
import 'package:snapchat_clone/product/Widgets/CameraButton.dart';
import '../product/Widgets/PpButton.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  late List<User> users;

  @override
  void initState() {
    super.initState();
    users = UserOperations.getAllUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const _NewChatButton(),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              _UserListItem(user: users[index]),
              const _Space()
            ],
          );
        })
      )
    );
  }
}

class _Space extends StatelessWidget {
  const _Space({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      height: 0.7,
    );
  }
}

class _UserListItem extends StatelessWidget {
  const _UserListItem({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: ListTile(
        leading: PpButton(ppPath: user.imagePath),
        title: Text(user.nickName),
        subtitle: _UserListTileSubtitle(user: user),
        trailing: const CameraButton()
      ),
    );
  }
}

class _UserListTileSubtitle extends StatelessWidget {
  const _UserListTileSubtitle({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Icon(
        Icons.square_rounded,
        size: 15,
        color: Colors.red,
      ),
      const Text(
        " New Snap",
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        textScaleFactor: 1.05,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(" • ${user.lastSeenMinute.toString()}m • "),
      ),
      Text(
        "${user.stPoint}🔥",
        style: const TextStyle(color: Colors.white),
      )
    ]);
  }
}

class _NewChatButton extends StatelessWidget {
  const _NewChatButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.question_answer,
          color: Colors.white,
        )
    );
  }
}
