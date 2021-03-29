import 'package:flutter/material.dart';
import 'package:my_resume/config/config.dart';
import 'package:my_resume/util/util.dart';


class TabDesktopWrapper extends StatelessWidget {
  final Widget child;
  final Color? bgColor;

   TabDesktopWrapper({required  this.child, this.bgColor});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final margin =  Responsive.isDesktop(context) ? width * desktopMargin : width * tabMargin;

    return Container(
      color: bgColor ?? Colors.transparent,
      width: width,
      padding: EdgeInsets.symmetric(horizontal : margin),
      child: child,
    );
  }
}
