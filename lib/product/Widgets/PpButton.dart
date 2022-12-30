import 'package:flutter/material.dart';
import 'package:snapchat_clone/product/Services/navigation.dart';
import '../../Views/ProfileView.dart';
import '../Models/user.dart';

class PpButton extends StatelessWidget with NavigatorManager{
  const PpButton({
    Key? key, required this.user, 
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        navigateToWidget(context, ProfileView(user: user,));
      }, //Burdan profil page gitmesini sağla
      style: ButtonStyle(padding: MaterialStateProperty.all(
      const EdgeInsets.all(4)),),
      child: Image.network(user.imagePath, scale: 10,)
    );
  }
}