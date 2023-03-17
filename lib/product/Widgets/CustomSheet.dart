import 'package:flutter/material.dart';

mixin CustomSeheet{
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async{
    showModalBottomSheet<T>(
                context: context,
                /* shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(50))), */
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return _CustomSheet(child: child);
                });
    return null;
  }
}

class _CustomSheet extends StatelessWidget {

  final Widget child;
  const _CustomSheet({required this.child});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all( Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: SizedBox(child: child)
            ),
        ),
         SizedBox(
          width: double.maxFinite,
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all( Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: TextButton(child:Text("Done",style: Theme.of(context).textTheme.titleLarge), onPressed: (){Navigator.of(context).pop();},),
          ),)
        ),
      ],
    );
  }
}


class SheetButton extends StatelessWidget {
  const SheetButton({Key? key, required this.onTap, required this.text}) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.maxFinite,
            padding: const EdgeInsets.fromLTRB(10, 6, 5, 1),
            child: TextButton(
              onPressed: onTap,
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(50, 30),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.topLeft),
              child: Text(text, style: Theme.of(context).textTheme.titleMedium)),
          );
  }
}
