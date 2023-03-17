import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:snapchat_clone/product/Services/nav_bar_props.dart';

import '../../core/navigation.dart';

class CameraButton extends ConsumerWidget with NavigatorManager{
  const CameraButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
          onPressed: (){
            //navigateToWidget(context, const CameraView());
            ref.read(navBarPropsProvider).mainTabController?.animateTo(2);
          },
          child: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.white60,
          ),
        );
  }
}
