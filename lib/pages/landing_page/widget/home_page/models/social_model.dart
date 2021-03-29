import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/util/constant.dart';

class SocialButtonModel{
  final String? label;
  final IconData? iconData;
  final String? link;

  SocialButtonModel({this.label, this.iconData, this.link});

  static List<SocialButtonModel> profileSocials = [
    SocialButtonModel(label: "sanizayyad99@gmail.com", iconData: MdiIcons.email),
    SocialButtonModel(label: "79111464138", iconData: MdiIcons.phone),
    SocialButtonModel(label: "Saint Petersburg, Russia", iconData: MdiIcons.mapMarker),
  ];

  static List<SocialButtonModel> socialMediaButtons = [
    SocialButtonModel(iconData:MdiIcons.facebook, link: facebookLink),
    SocialButtonModel(iconData:MdiIcons.instagram, link: instagramLink),
    SocialButtonModel(iconData:MdiIcons.twitter, link: twitterLink),
    SocialButtonModel(iconData:MdiIcons.github, link: githubLink),
  ];

}