import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Trophy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      //color: Colors.red,
      height: 40,
      width: 40,

          child: CircleAvatar(
            backgroundColor: Color(0XFF1A2B63),
            radius: 25,

            child: CircleAvatar(
            backgroundColor: Color(0XFFFFFFFF),
            radius: 11,
              child:
              Icon(Icons.emoji_events_sharp, size: 20, color: Colors.yellow,),

          ),
          ),

          // child: Stack(
          //   children: [
          //       Center(
          //         child: Container(
          //           child: CircleAvatar(
          //             backgroundColor: Color(0XFF1A2B63),
          //             radius: 100,
          //           ),
          //         ),
          //       ),
          //     Align(
          //       child: Container(
          //
          //         child: Icon(Icons.emoji_events_sharp, size: 250, color: Colors.yellow,),
          //       ),
          //     ),
          //   ],
          // ),

      );
  } // build
} // Trophy