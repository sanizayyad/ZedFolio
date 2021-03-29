import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProjectCardModel {
  final String projectTitle;
  final String projectDescription;
  final String projectLink;
  final String coverImage;
  final String? projectIconImage;
  final IconData? projectIcon;

  const ProjectCardModel(
      {required this.projectTitle,
      required this.projectDescription,
      required this.projectLink,
      required this.coverImage,
      this.projectIconImage,
      this.projectIcon});

  static List<ProjectCardModel> projects = [
    ProjectCardModel(
        projectTitle: "Expiry",
        projectDescription: "This Application was developed to make it easy to organize pantries and get notified when a product is about to expire. You can add shopping list and even search for recipes. ",
        projectLink: "link",
        coverImage: "asset/project1.png",
        projectIcon: MdiIcons.briefcase),
    ProjectCardModel(
        projectTitle: "VK responsive",
        projectDescription: "This project is a VK responsive Clone using Flutter . ",
        projectLink: "link",
        coverImage: "asset/project2.png",
        projectIcon: MdiIcons.briefcase),
    ProjectCardModel(
        projectTitle: "DevFolio",
        projectDescription: "Responsive Portfolio app using Flutter 2.0 and null safety",
        projectLink: "link",
        coverImage: "asset/project3.png",
        projectIcon: MdiIcons.briefcase),
  ];
}
