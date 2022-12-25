import 'package:flutter/material.dart';
import 'package:snapchat_clone/product/Services/service.dart';
import 'package:snapchat_clone/product/Models/user.dart';
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

  int index = 2;

  void _navBarOnTap(int value){
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },child: const Icon(Icons.question_answer, color: Colors.white,)),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: ((context, index) {
        return Column(
          children: [
            TextButton(
              onPressed: (){},
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: PpButton(ppPath: users[index].imagePath,),
                title: Text(users[index].nickName),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.square_rounded, size: 15, color: Colors.red,),
                    const Text(" New Snap", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),textScaleFactor: 1.05, ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(" • ${users[index].lastSeenMinute.toString()}m • "),
                    ),
                    Text("${users[index].stPoint}🔥", style: const TextStyle(color: Colors.white),)
                ]),
                trailing: const Icon(Icons.camera_alt_outlined, color: Colors.white60,)
              ),
            ),
            Container(color: Colors.white10, height: 0.7,)
          ],
        );
      }
      )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navBarOnTap,
        currentIndex: index,
        
        backgroundColor: Colors.transparent,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded), label: "▴"),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.group_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu_rounded), label: ""),
      ]),
    );
  }
}
 