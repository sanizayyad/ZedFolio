import 'package:url_launcher/url_launcher.dart';



void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

const String resumeLink = "https://drive.google.com/file/d/1f2ve1PNQ8cv77to0J9zgnOR2aA4sD2vt/view?usp=sharing";
const String githubLink = "https://github.com/sanizayyad";
const String facebookLink = "https://www.facebook.com/zayyad.sani.7/";
const String twitterLink = "https://twitter.com/sani_ziyad";
const String instagramLink = "https://www.instagram.com/ziyad.sani/";
