// ignore_for_file: deprecated_member_use
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/model/player.dart';
import 'package:tic_tac_toe_app/screens/leaderboard.dart';
import 'package:tic_tac_toe_app/widgets/app_Text.dart';
import 'package:tic_tac_toe_app/widgets/button_leaderboard.dart';
import 'package:tic_tac_toe_app/widgets/custom_dialog.dart';
import 'package:tic_tac_toe_app/widgets/gamebutton.dart';
import 'package:tic_tac_toe_app/widgets/o.dart';
import 'package:tic_tac_toe_app/widgets/rectangle.dart';
import 'package:tic_tac_toe_app/widgets/winning_board.dart';
import 'package:tic_tac_toe_app/widgets/x.dart';

List<Player> playerList = [];

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Timer _timer;
  late List<GameButton> buttonsList;
  var player1;
  var player2;
  var activePlayer;

  @override
  void initState() {
    super.initState();
    buttonsList = doInit();
  }

  List<GameButton> doInit() {
    player1 = [];
    player2 = [];
    activePlayer = 1;

    var gameButtons = <GameButton>[
      GameButton(id: 1),
      GameButton(id: 2),
      GameButton(id: 3),
      GameButton(id: 4),
      GameButton(id: 5),
      GameButton(id: 6),
      GameButton(id: 7),
      GameButton(id: 8),
      GameButton(id: 9),
    ];
    return gameButtons;
  }

  void playGame(GameButton gb) {
    setState(() {
      if (activePlayer == 1) {
        gb.child = Image.asset("images/nought.png");
        gb.text = "X";
        gb.bg = Colors.red;
        activePlayer = 2;
        player1.add(gb.id);
      } else {
        gb.child = Image.asset("images/cross.png");
        gb.text = "0";
        gb.bg = Colors.black;
        activePlayer = 1;
        player2.add(gb.id);
      }
      gb.enabled = false;
      int winner = checkWinner();
      if (winner == -1) {
        if (buttonsList.every((p) => p.text != "")) {
          showDialog(
            barrierDismissible: false,
              context: context,
              builder: (_) => CustomDialog("Game Tied",
                  "Press the reset button to start again.", resetGame));
        } else {
          activePlayer == 2 ? autoPlay() : null;
        }
      }
    });
  }

  void autoPlay() {
    var emptyCells = [];
    var list = List.generate(9, (i) => i + 1);
    for (var cellID in list) {
      if (!(player1.contains(cellID) || player2.contains(cellID))) {
        emptyCells.add(cellID);
      }
    }

    var r = Random();
    var randIndex = r.nextInt(emptyCells.length - 1);
    var cellID = emptyCells[randIndex];
    int i = buttonsList.indexWhere((p) => p.id == cellID);
    playGame(buttonsList[i]);
  }

  int checkWinner() {
    var winner = -1;
    if (player1.contains(1) && player1.contains(2) && player1.contains(3)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(2) && player2.contains(3)) {
      winner = 2;
    }

    // row 2
    if (player1.contains(4) && player1.contains(5) && player1.contains(6)) {
      winner = 1;
    }
    if (player2.contains(4) && player2.contains(5) && player2.contains(6)) {
      winner = 2;
    }

    // row 3
    if (player1.contains(7) && player1.contains(8) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(7) && player2.contains(8) && player2.contains(9)) {
      winner = 2;
    }

    // col 1
    if (player1.contains(1) && player1.contains(4) && player1.contains(7)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(4) && player2.contains(7)) {
      winner = 2;
    }

    // col 2
    if (player1.contains(2) && player1.contains(5) && player1.contains(8)) {
      winner = 1;
    }
    if (player2.contains(2) && player2.contains(5) && player2.contains(8)) {
      winner = 2;
    }

    // col 3
    if (player1.contains(3) && player1.contains(6) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(3) && player2.contains(6) && player2.contains(9)) {
      winner = 2;
    }

    //diagonal
    if (player1.contains(1) && player1.contains(5) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(5) && player2.contains(9)) {
      winner = 2;
    }

    if (player1.contains(3) && player1.contains(5) && player1.contains(7)) {
      winner = 1;
    }
    if (player2.contains(3) && player2.contains(5) && player2.contains(7)) {
      winner = 2;
    }

    if (winner != -1) {
      if (winner == 1) {
        playerList.add(Player(player: "Player 1", isPlayer1: true));

        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) {
              _timer = Timer(const Duration(milliseconds: 1500), () {
                Navigator.of(context).pop();
                setState(() {
                  resetGame();
                });
              });

              return const AlertDialog(
                actions: [
                  WinningBoard(title: "Player 1"),
                ],
                backgroundColor: Color(0XFF0D47A1),
              );
            }).then((value) {
          if (_timer.isActive) {
            _timer.cancel();
          }
        });
      } else {
        playerList.add(Player(player: "Player 2", isPlayer1: false));

        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) {
              _timer = Timer(const Duration(milliseconds: 1500), () {
                Navigator.of(context).pop();
                setState(() {
                  resetGame();
                });
              });

              return const AlertDialog(
                actions: [
                  WinningBoard(title: "Player 2"),
                ],
                backgroundColor: const Color(0XFF0D47A1),
              );
            }).then((value) {
          if (_timer.isActive) {
            _timer.cancel();
          }
        });
      } // else
    } // main if
    return winner;
  }

  void resetGame() {
    if (Navigator.canPop(context)) Navigator.pop(context);
    setState(() {
      buttonsList = doInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 71, left: 72, right: 72),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Rectangle(
                  color: const Color(0XFF42A5F5),
                  child: O(size: 47, color: Colors.white),
                ),
                const AppText(
                  text: "VS",
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFFDBDBDB),
                  letterSpacing: 0.5,
                ),
                Rectangle(
                  color: const Color(0XFF0D47A1),
                  child: X(
                      size: 47,
                      height: 12,
                      color: const [Colors.white, Colors.white]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 11, left: 72, right: 72),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
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
          Center(
            child: Container(
              height: 450,
              width: 450,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 50, bottom: 121),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.0,
                        crossAxisSpacing: 9.0,
                        mainAxisSpacing: 9.0,
                        mainAxisExtent: 120,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: buttonsList.length,
                      itemBuilder: (context, i) => Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.5),
                              blurRadius: 4,
                              offset: const Offset(1, 4), // Shadow position
                            ),
                          ],
                        ),
                        child: RaisedButton(
                          padding: const EdgeInsets.all(8.0),
                          onPressed: buttonsList[i].enabled
                              ? () => playGame(buttonsList[i])
                              : null,
                          child: buttonsList[i].child,
                          color: Colors.white,
                          disabledColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 43),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push<Player>(
                        MaterialPageRoute(builder: (_) => Leaderboard()));
                  },
                  child: const ButtonLeaderboard(),
                ),
                GestureDetector(
                  onTap: resetGame,
                  child: const Icon(
                    Icons.refresh_rounded,
                    color: Color(0XFF0D47A1),
                    size: 62,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  } // build
} // _HomeState
