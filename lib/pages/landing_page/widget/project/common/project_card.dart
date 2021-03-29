

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/config/config.dart';
import 'package:my_resume/pages/landing_page/widget/project/model/model.dart';
import 'package:my_resume/util/util.dart';

class ProjectCard extends StatefulWidget {
  final ProjectCardModel projectCardModel;

  const ProjectCard({required this.projectCardModel});

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final Size size =  MediaQuery.of(context).size;
    double height = size.height * 0.4;
    double width = Responsive.isMobile(context) ? size.width * 0.65 :size.width * 0.18;

    return InkWell(
      onTap: () {

      },
      onHover: (isHovering) {
        setState(() {
          isHover = isHovering ? true : false;
        });
      },
      child: CustomCard(
        width: width,
        height: height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.projectCardModel.projectIconImage != null
                    ? Image.asset(
                  widget.projectCardModel.projectIconImage!,
                  height: size.height * 0.1,)
                    : Icon(
                  widget.projectCardModel.projectIcon!,
                  color: Palette.primaryColor,
                  size: size.height * 0.1,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  widget.projectCardModel.projectTitle,
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
                  widget.projectCardModel.projectDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: size.height * 0.015,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w100,
                      height: Responsive.isDesktop(context) ? 2.0 : 1.5),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
              ],
            ),
            AnimatedOpacity(
              duration: Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage(widget.projectCardModel.coverImage),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ),
            Responsive.isMobile(context) 
                 ? Align(
              alignment: Alignment.topRight,
                   child: IconButton(
              icon: Icon(isHover ? MdiIcons.close : MdiIcons.information),
              color: Palette.primaryColor,
              iconSize: 40,
              onPressed: (){
                setState(() {
                    isHover = !isHover;
                });
              },
            ),
                 )
                : Container()
          ],
        ),
      ),
    );
  }
}

