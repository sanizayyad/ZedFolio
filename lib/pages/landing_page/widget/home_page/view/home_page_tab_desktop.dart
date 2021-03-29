import 'package:flutter/material.dart';
import 'package:my_resume/pages/landing_page/widget/home_page/common/common.dart';
import 'package:my_resume/util/util.dart';


class HomePageTabDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final profileRadius = Responsive.isDesktop(context) ? size.width * 0.27 : size.width * 0.30;

    return TabDesktopWrapper(
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: size.height * 0.15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hello(),
                  SizedBox(height: 30,),
                  ProfileInfo(),
                ],
              ),
            ),
            Container(
              height: profileRadius,
              width: profileRadius,
              child: ProfilePicture(radius:profileRadius,)
            ),
          ],
        ),
          ),
      ),
    );
  }
}


