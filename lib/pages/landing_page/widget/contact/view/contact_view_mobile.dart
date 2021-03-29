import 'package:flutter/material.dart';
import 'package:my_resume/pages/landing_page/widget/contact/common/common.dart';


class ContactsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            ContactsCardsList()
          ],
        ),
      ),
    );
  }
}
