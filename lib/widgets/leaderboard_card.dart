import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/widgets/app_Text.dart';
import 'package:tic_tac_toe_app/widgets/o.dart';
import 'package:tic_tac_toe_app/widgets/x.dart';

class LeaderboardCard extends StatelessWidget {
  final bool isplayer1;
  final String player;

  const LeaderboardCard({Key? key, this.isplayer1 = true, required this.player})
      : super(key: key);

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
                isplayer1
                    ? O(size: 26, color: const Color(0XFF42A5F5))
                    : X(
                        size: 26,
                        height: 7,
                        color: const [Color(0XFF0D47A1), Color(0XFF0D47A1)],
                      ),
                const SizedBox(
                  width: 23,
                ),
                AppText(
                  text: player,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 19, bottom: 23, top: 23),
            child: Row(
              children: [
                Container(
                  height: 52,
                  width: 52,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/trophy1.png"),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  } // build
} // LeaderboadCard
