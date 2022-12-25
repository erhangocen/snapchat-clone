import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Icon(Icons.search_rounded, color: Colors.white), 
      onPressed: (){},
    );
  }
}