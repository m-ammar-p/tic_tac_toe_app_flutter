import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/widgets/app_Text.dart';

class WinningBoard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.4,
      width: w * 1,
      decoration: BoxDecoration(
        color: Color(0XFF0D47A1),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/trophy1.png"),
              )
            ),
          ),

          SizedBox(height: 15,),
          AppText(text: "Player 1", fontSize: 20,
          color: Colors.white, fontWeight: FontWeight.w400,
          letterSpacing: 0.5,),

          AppText(text: "WON", fontSize: 40,
            color: Colors.white, fontWeight: FontWeight.w700,
            letterSpacing: 0.5,)


        ],
      ),

    );
  } // build
} // WinningBoard