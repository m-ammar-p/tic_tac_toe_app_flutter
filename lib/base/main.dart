import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/screens/splash.dart';

void main() {
  runApp(const TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe App',
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  } // build
}


