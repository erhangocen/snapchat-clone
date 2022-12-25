import 'package:flutter/material.dart';

class PpButton extends StatelessWidget {
  const PpButton({
    Key? key, required this.ppPath,
  }) : super(key: key);

  final String ppPath;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){}, //Burdan profil page gitmesini sağla
      style: ButtonStyle(padding: MaterialStateProperty.all(
      const EdgeInsets.all(4)),),
      child: Image.network(ppPath, scale: 10,)
    );
  }
}