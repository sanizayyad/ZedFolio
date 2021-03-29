import 'package:flutter/material.dart';
import 'package:my_resume/config/pallette.dart';
import 'package:my_resume/pages/landing_page/widget/home_page/models/models.dart';
import 'package:my_resume/util/constant.dart';


class SocialMediaButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: SocialButtonModel.socialMediaButtons.map((e) => _SocialMediaIconBtn(model: e)).toList()
    );
  }
}


class _SocialMediaIconBtn extends StatefulWidget {
  final SocialButtonModel model;

 const _SocialMediaIconBtn({required this.model});

  @override
  _SocialMediaIconBtnState createState() => _SocialMediaIconBtnState();
}

class _SocialMediaIconBtnState extends State<_SocialMediaIconBtn> {
  Color hoverBg = Colors.transparent;
  Color iconBg = Colors.white;
  bool _hovering = false;

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
      hoverBg = _hovering ? Colors.white : Colors.transparent;
      iconBg = _hovering ? Palette.primaryColor : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: MouseRegion(
        onEnter: (e) => _mouseEnter(true),
        onExit: (e) => _mouseEnter(false),
        child: GestureDetector(
          onTap: (){
            launchURL(widget.model.link!);
          },
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: hoverBg,
            ),
            child: Icon(widget.model.iconData, color: iconBg,size: 20,),
          ),
        ),
      ),
    );
  }
}
