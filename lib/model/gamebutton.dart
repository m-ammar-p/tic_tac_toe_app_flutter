import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {

  final int id;
  Color bg;
  bool enabled;
  String text;
  Widget? child;

  GameButton(
      {Key? key,
      this.id = 0,
      this.bg = Colors.grey,
      this.text = "",
      this.child,
      this.enabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  } // build
} // GameButton
