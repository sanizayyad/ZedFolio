import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactCardModel {
  final String contactTitle;
  final String contactDescription;
  final IconData contactIcon;

  const ContactCardModel(
      {required this.contactTitle,
      required this.contactDescription,
      required this.contactIcon});

  static List<ContactCardModel> contacts = [
    ContactCardModel(contactTitle: "Address", contactDescription: "Ispitatelei, Saint-Petersburg Russia", contactIcon: MdiIcons.mapMarker),
    ContactCardModel(contactTitle: "Email", contactDescription: "sanizayyad99@gmail.com", contactIcon: MdiIcons.email),
    ContactCardModel(contactTitle: "Phone", contactDescription: "+79111464138", contactIcon: MdiIcons.phone),
  ];
}
