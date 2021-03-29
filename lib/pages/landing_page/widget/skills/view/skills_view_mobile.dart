import 'package:flutter/material.dart';
import 'package:my_resume/pages/landing_page/widget/skills/common/common.dart';


class SkillsMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.15),
                child: TechnicalSkills()),
            SizedBox(height: size.height * 0.05,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: ProfessionalSkills()),
          ],
        ),
      ),
    );
  }
}
