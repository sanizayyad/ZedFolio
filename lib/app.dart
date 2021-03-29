import 'package:flutter/material.dart';
import 'package:my_resume/config/config.dart';
import 'pages/landing_page/landing_page.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZedFolio',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Palette.primaryColor,
        accentColor: Palette.primaryColor,
        highlightColor: Palette.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(),
    );
  }
}
