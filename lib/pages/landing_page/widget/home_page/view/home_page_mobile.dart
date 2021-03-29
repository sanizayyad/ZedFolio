import 'package:flutter/material.dart';
import 'package:my_resume/pages/landing_page/widget/home_page/common/common.dart';

class HomePageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final profileRadius = size.width * 0.3;

    return Container(
      width: size.width,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 16,),
            Container(
              height: profileRadius,
                width: profileRadius,
                child: ProfilePicture(radius: profileRadius,)),
            SizedBox(height: 30,),
            Hello(),
            SizedBox(height: 20,),
            ProfileInfo(),
          ],
        ),
      ),
    );
  }
}
