import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key, required this.onTap, required this.pageIndex}) : super(key: key);
  final Function(int?) onTap;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      onTap: onTap,
      fixedColor: HexColor("E1C093"),
      currentIndex: pageIndex,
      items: const [
        BottomNavigationBarItem(
          label: "ホーム",
          backgroundColor: Colors.grey,
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "お知らせ",
          backgroundColor: Colors.grey,
          icon: Icon(Icons.notifications_active),
        ),
        BottomNavigationBarItem(
          label: "ワーク",
          backgroundColor: Colors.grey,
          icon: Icon(Icons.motorcycle_outlined),
        ),
        BottomNavigationBarItem(
          label: "プロフィール",
          backgroundColor: Colors.grey,
          icon: Icon(Icons.account_circle),
        ),
        BottomNavigationBarItem(
          label: "チャット",
          backgroundColor: Colors.grey,
          icon: Icon(Icons.chat),
        ),
      ],
    );
  }
}
