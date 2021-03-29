import 'package:flutter/material.dart';
import 'package:my_resume/config/config.dart';
import 'package:my_resume/pages/landing_page/widget/contact/model/model.dart';
import 'package:my_resume/util/util.dart';


class ContactCard extends StatelessWidget {
  final ContactCardModel contactCardModel;

  const ContactCard({required this.contactCardModel});
  @override
  Widget build(BuildContext context) {
    final Size size =  MediaQuery.of(context).size;
    double height = size.height * 0.25;
    double width = Responsive.isMobile(context) ? size.width * 0.65 :size.width * 0.18;

    return CustomCard(
      width: width,
      height: height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Palette.primaryColor,width: 2)
              ),
              child: Icon(
                contactCardModel.contactIcon,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              contactCardModel.contactTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size.height * 0.02,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              contactCardModel.contactDescription,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: size.height * 0.015,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w100,
                  height: Responsive.isDesktop(context) ? 2.0 : 1.5),
            ),
          ],
        ),
      ),
    );
  }}
