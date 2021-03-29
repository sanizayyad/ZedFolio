

class SkillModel{
  final String skillName;
  final double percentage;

  const SkillModel({required this.skillName, required this.percentage});

  static List<SkillModel> technicalSkill = [
    SkillModel(skillName: "Flutter", percentage: 95),
    SkillModel(skillName: "Firebase", percentage: 80),
    SkillModel(skillName: "Git", percentage: 80),
    SkillModel(skillName: "Github", percentage: 80),
    SkillModel(skillName: "NodeJs", percentage: 80),
    SkillModel(skillName: "Backendless", percentage: 60),
    SkillModel(skillName: "Java", percentage: 80),
    SkillModel(skillName: "HTML/Css", percentage: 90),
    SkillModel(skillName: "Javascript", percentage: 80),
    SkillModel(skillName: "Figma", percentage: 60),
    SkillModel(skillName: "Photoshop", percentage: 60),
  ];

  static List<SkillModel> professionalSkill = [
    SkillModel(skillName: "Creativity", percentage: 90),
    SkillModel(skillName: "TeamWork", percentage: 70),
    SkillModel(skillName: "Communication", percentage: 65),
    SkillModel(skillName: "Project Management", percentage: 90),
  ];
}