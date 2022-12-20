import 'package:flutter/material.dart';
import 'package:snapchat_clone/snapchatDemo/snapchat.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    const mainColor = Color.fromARGB(255, 234, 234, 234);
    const Color backgroundColor = Color.fromARGB(255, 13, 13, 13);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        iconTheme: const IconThemeData(color: Colors.white),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          )
        ),
        appBarTheme: const AppBarTheme(
          actionsIconTheme: IconThemeData(size: 22.5, color: Colors.white),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: mainColor),
          titleTextStyle: TextStyle(color: mainColor, fontFamily: "aria", fontSize: 20, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
        ),
        primaryColor: mainColor,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.blue, 
          unselectedItemColor: Colors.white, 
          backgroundColor: Colors.transparent, 
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
        scaffoldBackgroundColor: backgroundColor
      ),
      home: const SnapChatDemo()
    );
  }
}