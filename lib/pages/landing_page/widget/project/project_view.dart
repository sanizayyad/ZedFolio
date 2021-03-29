import 'package:flutter/material.dart';
import 'package:my_resume/util/util.dart';
import 'view/view.dart';


class ProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: ProjectsMobile(),
        tablet: ProjectsTabDesktop(),
        desktop: ProjectsTabDesktop()
    );
  }
}