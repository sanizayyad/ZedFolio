import 'package:flutter/material.dart';
import 'package:my_resume/util/util.dart';
import 'view/view.dart';


class SkillsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Responsive(
        mobile: SkillsMobile(),
        tablet: SkillsTabDesktop(),
        desktop: SkillsTabDesktop()
    );
  }
}