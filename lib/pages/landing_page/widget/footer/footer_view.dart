import 'package:flutter/material.dart';
import 'package:my_resume/pages/landing_page/widget/home_page/common/common.dart';
import 'package:my_resume/config/config.dart';

class Footer extends StatelessWidget {
  Widget reserved = Text(
    "© All Right Reserved Sani Zayyad Bakeko",
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              reserved,
              SizedBox(
                height: 10,
              ),
              SocialMediaButtons()
            ],
          );
  }
}
