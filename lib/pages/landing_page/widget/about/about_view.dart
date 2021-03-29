import 'package:flutter/material.dart';
import 'package:my_resume/util/util.dart';
import 'view/view.dart';


class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: AboutMobile(),
        tablet: AboutTabDesktop(),
        desktop: AboutTabDesktop()
    );
  }
}