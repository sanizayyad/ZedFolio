import 'package:flutter/material.dart';
import 'package:my_resume/config/pallette.dart';
import 'package:my_resume/util/tabdesktop_wrapper.dart';
import '../models/action_model.dart';
import 'action.dart';
import 'logo.dart';
import 'package:my_resume/config/config.dart';


class AppBarTabDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  TabDesktopWrapper(
      bgColor: Palette.secondaryColor,
      child: Container(
          height: 70,
          child: Row(
            children: [
              NavBarLogo(),
              const Spacer(),
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



