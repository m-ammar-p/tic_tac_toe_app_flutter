import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/widgets/app_Text.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF0D47A1),
      body: Padding(
        padding: EdgeInsets.only(
          top: 69,
          bottom: 55,
        ),
        child: Container(
          height: h * 0.5,
          color: Colors.blue,
          child: Center(
            child: Column(
              children: [
                AppText(
                  text: "KATI ZERO",
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 12,
                ),
                Spacer(),
                AppText(
                  text: "KATI ZERO",
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } // build
} // Splash Class
