import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  final Color? color;
  final Widget? child;

  const Rectangle({Key? key, this.color, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 91,
      width: 91,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(alignment: Alignment.center, children: [
        Container(
          child: child,
        ),
      ]),
    );
  } // build
} // Rectangle
