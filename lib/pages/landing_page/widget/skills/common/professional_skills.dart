import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/config/config.dart';
import 'package:my_resume/pages/landing_page/widget/skills/common/progress.dart';
import 'package:my_resume/pages/landing_page/widget/skills/model/model.dart';
import 'package:my_resume/util/responsive.dart';

class ProfessionalSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text("Professional Skills", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26,),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Responsive.isMobile(context)
              ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: SkillModel.professionalSkill.map((e) => Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: _Skill(skillModel: e),
            )).toList(),)
              : Container(
                height: size.height * 0.45,
                child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                    physics: const NeverScrollableScrollPhysics(),
                    children: SkillModel.professionalSkill.map((e) => _Skill(skillModel: e)).toList(),
          ),
              )
        ],
      ),
    );
  }
}

class _Skill extends StatelessWidget {
  final SkillModel skillModel;
  const _Skill({required this.skillModel});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final circWidth = !Responsive.isMobile(context) ?  (size.width * 0.8) * 0.08 : size.width * 0.3;

    return Column(
      children: [
        Container(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: circWidth,
                  width: circWidth,
                  child: Progress(
                      value: skillModel.percentage/100,
                      color: Palette.primaryColor,
                      type: "circular"),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: circWidth,
                  width: circWidth,
                  child: Center(
                    child: Text("${skillModel.percentage}%", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Text("${skillModel.skillName}", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14,),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

