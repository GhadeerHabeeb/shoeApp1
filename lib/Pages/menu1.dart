import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  final String title;
  MenuBar({
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue),
      ),
    );
  }
}
