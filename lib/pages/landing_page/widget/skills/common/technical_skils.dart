import 'package:flutter/material.dart';
import 'package:my_resume/config/config.dart';
import 'package:my_resume/pages/landing_page/widget/skills/common/progress.dart';
import 'package:my_resume/pages/landing_page/widget/skills/model/model.dart';

class TechnicalSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text("Technical Skills", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26,),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Column(
            children: SkillModel.technicalSkill.map((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Skill(skillModel: e),
            )).toList(),
          )
        ],
      ),
    );
  }
}

class Skill extends StatelessWidget {
  final SkillModel skillModel;
  const Skill({required this.skillModel});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${skillModel.skillName}", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,),
            ),
            Text("${skillModel.percentage}%", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,),
            ),
          ],
        ),
        SizedBox(height: 4,),
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: Progress(
            type: 'linear',
            value: skillModel.percentage/100,
            color: Palette.primaryColor,
          ),
        )
      ],
    );
  }
}
