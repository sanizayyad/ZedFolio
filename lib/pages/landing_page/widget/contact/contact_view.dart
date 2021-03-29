import 'package:flutter/material.dart';
import 'package:my_resume/util/util.dart';
import 'view/view.dart';


class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: ContactsMobile(),
        tablet: ContactsTabDesktop(),
        desktop: ContactsTabDesktop()
    );
  }
}