import 'package:flutter/material.dart';


class ProfilePicture extends StatelessWidget {
  final double radius;
  const ProfilePicture({required this.radius});
  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(radius),
       color: Colors.white,
       image: DecorationImage(
         image: AssetImage('asset/profile_picture.jpg')  ,
         fit: BoxFit.cover
       )
     ),
    );
  }
}
