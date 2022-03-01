import 'package:flutter/material.dart';

class ContentRow extends StatelessWidget {
  const ContentRow({Key? key, required this.top, required this.content, }) : super(key: key);
  final String top;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300, width: 1)),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              height: 36,
              width: 36,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            Column(
              children: [
                Text(
                  top,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(content),
              ],
            )
          ],
        ),
      ),
    );
  }
}