import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomAppbar extends StatefulWidget with PreferredSizeWidget {
  const CustomAppbar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    var iconButtons = <Widget>[];

    iconButtons = [
      const Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(Icons.settings),
      )
    ];

    return AppBar(
      title: Text(widget.title),
      actions: iconButtons,
      backgroundColor: HexColor("E1C093"),
    );
  }
}

