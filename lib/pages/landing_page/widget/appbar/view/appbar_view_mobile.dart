import 'package:flutter/material.dart';
import 'package:my_resume/pages/landing_page/widget/appbar/models/action_model.dart';
import 'action.dart';
import 'logo.dart';



class DrawerMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height * 0.1, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: NavBarLogo(),
            ),
            SizedBox(height: 20,),
            for (int i = 0; i < ActionModel.navList.length; i++)
              AppBarAction(
                  childText: ActionModel.navList[i].label,
                  index: i,
                  icon: ActionModel.navList[i].iconData,
              ),
          ],
        ),
      ),
    );
  }
}


