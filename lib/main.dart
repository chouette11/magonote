import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:magonote/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: HexColor("E1C093"),
        backgroundColor: HexColor("E1C093"),
      ),
      home: const HomePage(title: 'whicker ～孫の手～'),
    );
  }
}
