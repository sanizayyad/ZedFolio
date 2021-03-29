import 'package:flutter/material.dart';
import 'package:my_resume/config/config.dart';

class CustomCard extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;


  const CustomCard({required this.height, required this.width,required this.child});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Palette.secondaryColor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 4.0, // has the effect of softening the shadow
              offset: Offset(1, 2.0),
            )
          ]),
      child: child,
    );
  }
}


