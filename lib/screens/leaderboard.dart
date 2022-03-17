import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/widgets/app_Text.dart';
import '../widgets/leaderboard_card.dart';


class Leaderboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List leaderboardItemCount = [LeaderboardCard()];
    leaderboardItemCount.add(LeaderboardCard());

    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 32, right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios,),

                AppText(text: "LEADER", fontSize: 25,
                fontWeight: FontWeight.w700, color: Color(0XFF0D47A1),
                letterSpacing: 10,),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 23),
              child: AppText(text: "BOARD", fontSize: 35,
                  fontWeight: FontWeight.w700, color: Color(0XFF0D47A1),
                  letterSpacing: 10),
            ),

            SizedBox(height: 4,),

            Expanded(

                child: ListView.builder(
                    itemCount: leaderboardItemCount.length,
                    itemBuilder: leaderboardItem,
                ),

              // child: ListView(
              //   children:
              //     List.generate(20, (index) => LeaderboardCard()).toList(),
              //
              // ),
            ),

          ],
        ),
      ),
    );
  } // build

  Widget leaderboardItem(BuildContext context, int index) =>
      LeaderboardCard();


} // Leaderboard