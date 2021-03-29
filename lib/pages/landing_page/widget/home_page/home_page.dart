import 'package:flutter/material.dart';
import 'package:my_resume/util/util.dart';
import 'view/view.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: HomePageMobile(),
        tablet: HomePageTabDesktop(),
        desktop: HomePageTabDesktop()
    );
  }
}