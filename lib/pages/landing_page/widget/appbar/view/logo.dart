import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_resume/config/pallette.dart';
import 'package:my_resume/util/responsive.dart';

import '../../../landing_page.dart';

class NavBarLogo extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return GestureDetector(
      onTap: (){
        context.read(itemControllerProvider).scroll(0);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: Palette.primaryColor),
        child: Text(
          "ZEDFolio",
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
