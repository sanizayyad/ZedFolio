import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActionModel{
  final String label;
  final IconData iconData;

  ActionModel({required this.label, required this.iconData});

  static List<ActionModel> navList = [
    ActionModel(label: "Home", iconData: Icons.home),
    ActionModel(label: "About", iconData: Icons.person),
    ActionModel(label: "Skills", iconData: Icons.settings),
    ActionModel(label: "Projects", iconData: Icons.build),
    ActionModel(label: "Contact", iconData: Icons.phone),
    ActionModel(label: "Resume", iconData: MdiIcons.download),
  ];

}
