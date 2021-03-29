import 'package:flutter/material.dart';
import 'package:my_resume/pages/landing_page/widget/about/common/common.dart';
import 'package:my_resume/util/util.dart';


class AboutTabDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final contWidth = Responsive.isDesktop(context) ? (size.width * 0.8) * 0.35 : (size.width * 0.9) * 0.425;
    return TabDesktopWrapper(
      child: SafeArea(
        child: Container(
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: size.height * 0.6,
                        width: contWidth,
                        child: AboutImage()),
                    Container(
                      width: contWidth,
                      child:AboutInfo(),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                    padding:  EdgeInsets.only(top: 40),
                    child: WhatIDo(),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
