import 'package:flutter/material.dart';

import 'CustomSheet.dart';


class StoriesSheetData extends StatelessWidget {
  const StoriesSheetData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

       return SizedBox(
          width: double.maxFinite,
         child: Column(
          
          children:   [
            SheetButton(text: "Manage Subscriptions and Notifications", onTap: (){}),
          const Divider(),
          SheetButton(text: "View Hidden Stories", onTap: (){}),

            
          ],
         ),
       );
  }
}