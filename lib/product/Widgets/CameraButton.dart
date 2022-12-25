import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  const CameraButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
          onPressed: (){},
          child: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.white60,
          ),
        );
  }
}
