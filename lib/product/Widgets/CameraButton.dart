import 'package:flutter/material.dart';
import 'package:snapchat_clone/views/CameraView.dart';

import '../Services/navigation.dart';

class CameraButton extends StatelessWidget with NavigatorManager{
  const CameraButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
          onPressed: (){
            navigateToWidget(context, const CameraView());
            
          },
          child: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.white60,
          ),
        );
  }
}
