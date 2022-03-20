import 'package:flutter/material.dart';

class X extends StatelessWidget {
  double size;
  double height;
  final List<Color> color;

  X({required this.size, required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: size / 2 - height / 2,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(-45 / 360),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: const [0.1, 0.8],
                    colors: color,
                  ),
                ),
                height: height,
                width: size,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: size / 2 - height / 2,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(45 / 360),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: const [0.1, 0.8],
                    colors: color,
                  ),
                ),
                height: height,
                width: size,
              ),
            ),
          )
        ],
      ),
    );
  } // build
} // X class
