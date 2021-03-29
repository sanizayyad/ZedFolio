import 'package:flutter/material.dart';
import 'package:my_resume/config/config.dart';
import 'package:my_resume/pages/landing_page/widget/about/models/docard_model.dart';
import 'package:my_resume/util/util.dart';


class WhatIDo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size =  MediaQuery.of(context).size;

    final double wrapSpacing = !Responsive.isMobile(context) ? (size.width * 0.8) * 0.03 :0;
    return Column(
      children: [
        Center(
          child: Text("What I do", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 35,),
        Wrap(
          runSpacing: 15,
          spacing: wrapSpacing,
          children: DoCardModel.docards.map((e) => _DoCard(doCardModel: e)).toList()
        ),
      ],
    );
  }
}

class _DoCard extends StatelessWidget {
  final DoCardModel doCardModel;


  const _DoCard({required this.doCardModel,});

  @override
  Widget build(BuildContext context) {
    final Size size =  MediaQuery.of(context).size;
    double height = Responsive.isMobile(context) ? size.height * 0.4 :size.height * 0.30 ;
    double width = Responsive.isMobile(context) ? size.width * 0.7 :size.width * 0.18;

    return CustomCard(
      width: width,
      height: height,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(doCardModel.doIcon, size: 30, color:  doCardModel.color,),
            SizedBox(
              height:  16,
            ),
            Text(
              doCardModel.doTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize:  15,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height:  12,
            ),
            Flexible(
              child: Text(
                doCardModel.doDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize:  12,
                    fontWeight: FontWeight.w300,
                    height:  Responsive.isMobile(context) ? 2.0 : 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
