import 'package:flutter/material.dart';
import 'package:snapchat_clone/snapchatDemo/service.dart';
import 'package:snapchat_clone/snapchatDemo/user.dart';
import '../core/defaultPhotos.dart';
import 'constTexts.dart';

class SnapChatDemo extends StatefulWidget {
  const SnapChatDemo({Key? key}) : super(key: key);

  @override
  State<SnapChatDemo> createState() => _SnapChatDemoState();
}

class _SnapChatDemoState extends State<SnapChatDemo> {

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
      appBar: AppBar(
        title: Text(ConstTexts.chat),
        leadingWidth: 150,
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            _TabBarTextButton(
            textbutton: TextButton(
              child: Image.network(DefaultPhotoPaths.defaultPp, scale: 10,),
              onPressed: (){},
            )
          ),
          _TabBarTextButton(
            textbutton: TextButton(
              child: const Icon(Icons.search_rounded, color: Colors.white , ), 
              onPressed: (){},
            )
          ),
          ],
        ),
        actions: [
          _TabBarTextButton(
            textbutton: TextButton(
              child: const Icon(Icons.person_add, color: Colors.white , ), 
              onPressed: (){},
            )
          ),
          _TabBarTextButton(
            textbutton: TextButton(
              child: const Icon(Icons.more_horiz, color: Colors.white ,), 
              onPressed: (){},
            ),
          ),
        ],
      ),
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
                leading: Image.network(users[index].imagePath),
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

class _TabBarTextButton extends StatelessWidget {
  const _TabBarTextButton({
    Key? key, required this.textbutton,
  }) : super(key: key);

  final Widget textbutton;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 2),
      width: 50, 
      height: 50,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(19, 255, 255, 255)),
      child: textbutton,
    );
  }
}
 