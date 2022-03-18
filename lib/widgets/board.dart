import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          [0, 0, 0],
          [0, 0, 0],
          [0, 0, 0]
        ]
            .map((row) => Row(
                children: row
                    .map((col) => Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Text("$col")))
                    .toList()))
            .toList(),
      ),
    );

    //
    // Container(
    //     child: Column(
    //         children: [
    //           [0,0,0],
    //           [0,0,0],
    //           [0,0,0]
    //         ].map((row) => Row(
    //             children: row.map((col) => Container(
    //                 decoration: BoxDecoration(
    //                     border:Border.all(color:Colors.black)
    //                 ),
    //                 child: Text("$col")
    //             ))
    //         ))
    //     ).toList();
    //
    // );
  } // build

}
