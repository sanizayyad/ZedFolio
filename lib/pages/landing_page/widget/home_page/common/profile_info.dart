import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/config/config.dart';
import 'package:my_resume/pages/landing_page/widget/home_page/models/models.dart';
import 'package:my_resume/util/responsive.dart';
import 'common.dart';


class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool mobile = Responsive.isMobile(context);
    bool desktop = Responsive.isDesktop(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: !mobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Text("Sani Zayyad", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: !desktop ? 42 : 60,
        ),),
        SizedBox(height: 16,),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.play_arrow_rounded,
              color: Palette.primaryColor,
            ),
            TyperAnimatedTextKit(
                isRepeatingAnimation: true,
                speed: Duration(milliseconds: 50),
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
                text: [
                  " Flutter Developer",
                  " Tech Enthusiast",
                  " UI Designer",
                ]),
          ],
        ),
        SizedBox(height: 30,),
        for(SocialButtonModel button in SocialButtonModel.profileSocials)
          _InfoItem(model: button,),
        SizedBox(height: 30,),
        SocialMediaButtons(),
      ],
    );
  }
}

class _InfoItem extends StatelessWidget {
  final SocialButtonModel model;

  const _InfoItem({required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            icon: Icon(model.iconData),
            iconSize: 20,
            onPressed: (){}
        ),
        SizedBox(width:5,),
        Text("${model.label}", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 15,
        ),),
      ],
    );
  }
}
