import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/widgets/app_Text.dart';
import 'package:tic_tac_toe_app/widgets/button_leaderboard.dart';
import 'package:tic_tac_toe_app/widgets/o.dart';
import 'package:tic_tac_toe_app/widgets/rectangle.dart';
import 'package:tic_tac_toe_app/widgets/winning_board.dart';
import 'package:tic_tac_toe_app/widgets/x.dart';

class Winning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 71, left: 72, right: 72),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Rectangle(
                  color: Color(0XFF42A5F5),
                  child: O(size: 47, color: Colors.white),
                ),
                AppText(
                  text: "VS",
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFFDBDBDB),
                  letterSpacing: 0.5,
                ),

                Rectangle(
                  color: Color(0XFF0D47A1),
                  child: X(size: 47, height: 12, color: [Colors.white, Colors.white]),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 11, left: 72, right: 72),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Player 1",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF656565),
                  letterSpacing: 0.5,
                ),
                AppText(
                  text: "Player 2",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF656565),
                  letterSpacing: 0.5,
                ),
              ],
            ),
          ),

          Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 60),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WinningBoard(),

              ],
            ),
          ),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 43),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonLeaderboard(),
                Icon(Icons.refresh_rounded, color: Color(0XFF0D47A1),
                size: 62,)
              ],
            ),
          ),

        ],
      ),
    );
  } // build
} // Winning
