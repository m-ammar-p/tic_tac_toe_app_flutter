import 'package:flutter/material.dart';

class O extends StatelessWidget {
  double size;
  Color color;
  final Color? insideColor;

  O({required this.size, required this.color,
  this.insideColor});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: insideColor,
          borderRadius: BorderRadius.circular(size / 2),
      ),
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(size / 2),
          gradient: RadialGradient(
            radius: 0.18,
            colors: [Colors.transparent, color],
            stops: [1, 1],
          ),

        ),
      ),
    );
  }
}