import 'package:flutter/material.dart';
import 'package:my_resume/config/config.dart';

class Progress extends StatefulWidget {
  final double value;
  final Color color;
  final String type;
  const Progress({required this.value,required this.color,required this.type});

  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> with TickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _animation;
  @override
  void initState() {
    _controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = Tween(begin: 0.0, end: widget.value).animate(_controller)
      ..addListener(() {
        setState(() {
        });
      });
    _controller.forward();
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.type == "linear"
        ? LinearProgressIndicator(
      value:_animation.value,
      backgroundColor: Palette.secondaryColor,
      valueColor: AlwaysStoppedAnimation<Color>(widget.color),
      minHeight: 6,)
       : CircularProgressIndicator(
          strokeWidth: 5,
          value:_animation.value,
          valueColor: AlwaysStoppedAnimation<Color>(widget.color),
          backgroundColor: Palette.secondaryColor,
        )
    ;
  }
}
