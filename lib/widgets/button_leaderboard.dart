import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/widgets/app_Text.dart';

class ButtonLeaderboard extends StatelessWidget {
  const ButtonLeaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 218,
      decoration: BoxDecoration(
          color: const Color(0XFF0D47A1),
          borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ImageIcon(
              AssetImage(
                "images/leaderboard_icon.png",
              ),
              color: Colors.white,
              size: 40,
            ),
            AppText(
              text: "Leader board",
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ],
        ),
      ),
    );
  } // build
} // ButtonLeaderboard
