import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/widgets/app_Text.dart';

class WinningBoard extends StatelessWidget {
  final title;

  const WinningBoard({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.4,
      width: w * 1,
      decoration: BoxDecoration(
        color: const Color(0XFF0D47A1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/trophy1.png"),
            )),
          ),
          const SizedBox(
            height: 15,
          ),
          AppText(
            text: title,
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
          ),
          const AppText(
            text: "WON",
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5,
          )
        ],
      ),
    );
  } // build
} // WinningBoard
