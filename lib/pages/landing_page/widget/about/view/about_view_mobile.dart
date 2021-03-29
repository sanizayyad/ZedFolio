import 'package:flutter/material.dart';
import 'package:my_resume/pages/landing_page/widget/about/common/common.dart';


class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              height: height * 0.3,
              width: height * 0.8,
                child: AboutImage()),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.15) ,
                child: AboutInfo()),
            SizedBox(height: 30,),
            WhatIDo()
          ],
        ),
      ),
    );
  }
}
