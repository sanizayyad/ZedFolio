import 'package:flutter/material.dart';
import 'package:my_resume/config/pallette.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70),
              topRight: Radius.circular(70),
              bottomRight: Radius.circular(70)),
          color: Palette.primaryColor),
      child: Text(
        "Hello I'm",
        style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 1
        ),

      ),
    );
  }
}
