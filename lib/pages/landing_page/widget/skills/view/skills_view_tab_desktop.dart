import 'package:flutter/material.dart';
import 'package:my_resume/util/tabdesktop_wrapper.dart';
import 'package:my_resume/util/util.dart';
import 'package:my_resume/pages/landing_page/widget/skills/common/common.dart';


class SkillsTabDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final contWidth = Responsive.isDesktop(context) ? (size.width * 0.8) * 0.37 : (size.width * 0.9) * 0.43;

    return TabDesktopWrapper(
      child: SafeArea(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: contWidth,
                child: TechnicalSkills(),
              ),
              Container(
                width: contWidth,
                child: ProfessionalSkills(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
