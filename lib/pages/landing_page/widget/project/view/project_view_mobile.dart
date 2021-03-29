import 'package:flutter/material.dart';
import 'package:my_resume/pages/landing_page/widget/project/common/common.dart';


class ProjectsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            ProjectCardsView()
          ],
        ),
      ),
    );
  }
}
