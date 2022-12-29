import 'package:flutter/material.dart';
import '../../Views/ProfileView.dart';
import '../Models/user.dart';

class PpButton extends StatelessWidget {
  const PpButton({
    Key? key, required this.user, 
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        navigate(context, ProfileView(user: user,));
      }, //Burdan profil page gitmesini sağla
      style: ButtonStyle(padding: MaterialStateProperty.all(
      const EdgeInsets.all(4)),),
      child: Image.network(user.imagePath, scale: 10,)
    );
  }

  void navigate(context, Widget widget){
    Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => widget
    ),
  );
  }
}