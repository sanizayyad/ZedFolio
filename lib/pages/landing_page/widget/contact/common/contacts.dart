import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/pages/landing_page/widget/contact/common/common.dart';
import 'package:my_resume/pages/landing_page/widget/contact/model/model.dart';
import 'package:my_resume/util/util.dart';


class ContactsCardsList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Center(
          child: Text("Contact Me", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 35,),
        Responsive.isMobile(context)
            ? _ContactsCarouselMobile()
            : _ContactsCarouselDesktop(),
      ],
    );
  }
}


class _ContactsCarouselMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size =  MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      child: CarouselSlider.builder(
        itemCount: ContactCardModel.contacts.length,
        itemBuilder: (BuildContext context, int itemIndex, int i) =>
            ContactCard(contactCardModel: ContactCardModel.contacts[i],),
        options: CarouselOptions(
          height: size.height * 0.3,
          autoPlay: true,
          viewportFraction: 0.7,
          autoPlayInterval: Duration(seconds: 5),
          enlargeCenterPage: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          enableInfiniteScroll: false,
        ),
      ),
    );
  }
}

class _ContactsCarouselDesktop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size =  MediaQuery.of(context).size;
    double width = Responsive.isDesktop(context) ? (size.width * 0.8) * 0.015 : (size.width * 0.9) * 0.015;

    return Container(
      height: size.height * 0.30,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: ContactCardModel.contacts.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return VerticalDivider(
            color: Colors.transparent,
            width: (size.width * 0.8) * 0.015,
          );
        },
        itemBuilder: (context, index) {
          return ContactCard(contactCardModel: ContactCardModel.contacts[index],);
          }
      ),
    );
  }
}




