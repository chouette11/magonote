import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 300,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(color: Colors.blue),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
