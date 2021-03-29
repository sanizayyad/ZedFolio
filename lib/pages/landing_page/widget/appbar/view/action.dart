import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_resume/config/config.dart';
import 'package:my_resume/util/util.dart';

import '../../../landing_page.dart';

class AppBarAction extends ConsumerWidget {
  final String childText;
  final int index;
  final IconData icon;

  const AppBarAction(
      {required this.childText,
      required this.index,
      required this.icon
      });
  @override
  Widget build(BuildContext context,ScopedReader watch) {
    final screenSize = MediaQuery.of(context).size;

    return screenSize.width > appBarSwitch
        ? Padding(
          padding: const EdgeInsets.all(4),
          child: MaterialButton(
            hoverColor: Palette.primaryColor,
            shape: index == 5
                ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: Palette.primaryColor))
                : null,
            onPressed: () {
              if(index == 5){
                launchURL(resumeLink);
              }else{
                context.read(itemControllerProvider).scroll(index);
              }
            },
            child: Text(
              childText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
          ),
        )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                hoverColor: Palette.primaryColor,
                shape: index == 5
                    ? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Palette.primaryColor))
                    : null,
                onPressed: () {
                  if(index == 5){
                    launchURL(resumeLink);
                  }else{
                    context.read(itemControllerProvider).scroll(index);
                  }
                  Navigator.pop(context);
                },
                child: ListTile(
                  leading: Icon(
                    icon,
                    color: Palette.primaryColor,
                  ),
                  title: Text(childText),
                )),
          );
  }

}

