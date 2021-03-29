
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/config/config.dart';
import 'package:my_resume/pages/landing_page/widget/project/common/common.dart';
import 'package:my_resume/pages/landing_page/widget/project/model/model.dart';
import 'package:my_resume/util/util.dart';


class ProjectCardsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size =  MediaQuery.of(context).size;

    return Column(
      children: [
        Center(
          child: Text("Projects", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 35,),
        Responsive.isMobile(context)
            ? _ProjectsCarouselMobile()
            : _ProjectsCarouselDesktop(),
        SizedBox(height: 16,),
        MaterialButton(
          hoverColor: Palette.primaryColor.withAlpha(150),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(color: Palette.primaryColor)),
          onPressed: () {
          },
          child: Text(
            "See More",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14
            ),
          ),
        ),
      ],
    );
  }
}


class _ProjectsCarouselMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size =  MediaQuery.of(context).size;
    return CarouselSlider.builder(
      itemCount: ProjectCardModel.projects.length,
      itemBuilder: (BuildContext context, int itemIndex, int i) =>
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ProjectCard(projectCardModel: ProjectCardModel.projects[i],)),
      options: CarouselOptions(
        height: size.height * 0.4,
        autoPlay: true,
        viewportFraction: 0.7,
        autoPlayInterval: Duration(seconds: 5),
        enlargeCenterPage: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        enableInfiniteScroll: false,
      ),
    );
  }
}

class _ProjectsCarouselDesktop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size =  MediaQuery.of(context).size;
    double width = Responsive.isDesktop(context) ? (size.width * 0.8) * 0.015 : (size.width * 0.9) * 0.015;

    return Container(
      height: size.height * 0.45,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: ProjectCardModel.projects.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return VerticalDivider(
            color: Colors.transparent,
            width: (size.width * 0.8) * 0.015,
          );
        },
        itemBuilder: (context, index) {
          return ProjectCard(projectCardModel: ProjectCardModel.projects[index]);
          }
      ),
    );
  }
}




