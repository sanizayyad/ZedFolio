import 'package:flutter/material.dart';
import 'package:my_resume/pages/landing_page/widget/contact/common/common.dart';
import 'package:my_resume/util/util.dart';


class ContactsTabDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabDesktopWrapper(
      child: SafeArea(
        child: Container(
          child: ContactsCardsList(),
        ),
      ),
    );
  }
}
