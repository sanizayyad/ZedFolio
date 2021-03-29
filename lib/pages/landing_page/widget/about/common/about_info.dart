import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/config/config.dart';
import 'package:my_resume/util/util.dart';

class AboutInfo extends StatelessWidget {

  final aboutMe = "Hello, My name is Sani Zayyad, I'm a Results-oriented, highly proficient Flutter Developer with real passion for mobile and web application development using Flutter. I have a solid background in creating complex flutter applications. Technologies I have worked with: ";
  @override
  Widget build(BuildContext context) {
    bool mobile = Responsive.isMobile(context);

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text("About Me", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26,),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 14,),
          Text("$aboutMe", style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            height: 1.7),
            textAlign: !mobile ? TextAlign.start : TextAlign.center,
          ),
          SizedBox(height: 14,),
          _Techs(),
          SizedBox(height: 16,),
          DownloadButton()
        ],
      ),
    );
  }
}
class _Techs extends StatelessWidget {
  List<String> _techs =[
    "Flutter",
    "Firebase",
    "Git",
    "Github",
    "NodeJs",
    "Backendless",
    "Java",
    "HTML/Css",
    "Javascript",
    "Figma",
    "Photoshop"
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.center,
      spacing: 8,
      runSpacing: 10,
      children: _techs.map((e) => item(e)).toList(),
    );
  }

  Widget item(text){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Palette.primaryColor, width: 2),
      ),
      child: Text('$text',
        style: TextStyle(
          color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14
        ),
      ),
    );
  }
}


class DownloadButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        launchURL(resumeLink);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(70)),
            color: Palette.primaryColor),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Download CV",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
              ),
            ),
           SizedBox(width: 6,),
           Icon(MdiIcons.download, color: Colors.white, size:  20,)
          ],
        ),
      ),
    );
  }
}
