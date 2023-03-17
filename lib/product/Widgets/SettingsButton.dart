import 'package:flutter/material.dart';
import 'package:snapchat_clone/views/SettingsView.dart';
import '../../core/navigation.dart';
import 'TabBarTextButton.dart';

class SettingsButton extends StatelessWidget with NavigatorManager{
  const SettingsButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TabBarTextButton(
                textbutton: TextButton(
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    navigateToWidget(context, const SettingsView());
                  },
                ),
              );
  }
}
