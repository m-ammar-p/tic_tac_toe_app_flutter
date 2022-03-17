import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/widgets/app_Text.dart';
import 'package:tic_tac_toe_app/widgets/o.dart';
import 'package:tic_tac_toe_app/widgets/trophy.dart';
import 'package:tic_tac_toe_app/widgets/x.dart';

class LeaderboardCard extends StatelessWidget {
  final bool isCross;

  const LeaderboardCard({Key? key, this.isCross = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 9),
      height: 98,
      //padding: const EdgeInsets.only(top: 36, left: 34, right: 19, bottom: 36),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10.0),
      ),

      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 36, bottom: 36, left: 34),
            child: Row(
              children: [
               isCross ? X(
                  size: 26,
                  height: 7,
                  color: [Color(0XFF0D47A1), Color(0XFF0D47A1)],
                ) :
                O(size: 26, color: Color(0XFF42A5F5)),
                SizedBox(
                  width: 23,
                ),
                AppText(
                  text: "Player 2",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 19, bottom: 23, top: 23),
            child: Row(
              children: [
                Trophy(),
              ],
            ),
          )
        ],
      ),
    );
  } // build
} // LeaderboadCard