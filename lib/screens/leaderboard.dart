import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/model/player.dart';
import 'package:tic_tac_toe_app/screens/home.dart';
import 'package:tic_tac_toe_app/widgets/app_Text.dart';
import '../widgets/leaderboard_card.dart';

class Leaderboard extends StatelessWidget {
  Leaderboard({Key? key}) : super(key: key);

  List<Player> leaderboardItemCount = [];

  @override
  Widget build(BuildContext context) {
    leaderboardItemCount.addAll(playerList);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 32, right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset("images/back_arrow.png"),
                ),
                const SizedBox(
                  width: 30,
                ),
                const AppText(
                  text: "LEADER",
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF0D47A1),
                  letterSpacing: 10,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 45),
              child: const AppText(
                  text: "BOARD",
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF0D47A1),
                  letterSpacing: 10),
            ),
            const SizedBox(
              height: 4,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 60),
                itemCount: leaderboardItemCount.length,
                itemBuilder: leaderboardItem,
              ),
            ),
          ],
        ),
      ),
    );
  } // build

  Widget leaderboardItem(BuildContext context, int index) {
    return LeaderboardCard(
      isplayer1: leaderboardItemCount[index].isPlayer1,
      player: leaderboardItemCount[index].player,
    );
  }
} // Leaderboard
