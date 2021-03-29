

import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DoCardModel {
  final IconData doIcon;
  final String doTitle;
  final String doDescription;
  final Color? color;

  const DoCardModel({required this.doIcon,
        required this.doTitle,
        required this.doDescription,
        this.color
  });

  static List<DoCardModel> docards = [
    DoCardModel(doIcon: MdiIcons.cellphone,
        doTitle: "App Development",
        doDescription: "I develop Mobile Applications for Android and IOS that comply with the guidelines of the app stores and ensure the functional and technical side of the application works properly. I'm expanding my skills by developing responsive apps for web and mobile",
        color: Color(0xff9774fa),
    ),
    DoCardModel(doIcon: MdiIcons.bullseye,
      doTitle: "UI Design",
      doDescription: "UI is a crucial part of an Application, that's why I invested my time in learning UI design, User flow, Wireframing and prototyping of Mobile Apps",
      color: Color(0xffed7256),
    ),
    DoCardModel(doIcon: MdiIcons.codeTags,
      doTitle: "Open Source - Github",
      doDescription: "I contribute to open source with numerous projects. Make sure you follow me on github ",
      color: Color(0xff2796e2),
    ),

  ];
}