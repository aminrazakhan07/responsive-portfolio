// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

myAchieve(String num, String type) {
  return Row(
    children: [
      Text(
        num,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Container(margin: EdgeInsets.only(top: 10), child: Text(type))
    ],
  );
}

/////// Container Cards
// Widget containrCartd(IconData iconA, String textA) {
//   return SizedBox(
//     width: 105,
//     height: 115,
//     child: Card(
//       color: Colors.black,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             iconA,
//             color: Colors.white,
//             size: 40, // Increase icon size for better visibility
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             textA,
//             style: TextStyle(color: Colors.white, fontSize: 16),
//           ),
//         ],
//       ),
//     ),
//   );
// }

//////  2
Widget containrCartd(IconData iconA, String textA) {
  return LayoutBuilder(
    builder: (context, constraints) {
      double width = constraints.maxWidth * 0.3; // اسکرین کا 30 فیصد
      double height =
          width; // اسکرین کے مطابق ویجیٹ کی ہائٹ ایڈجسٹ کی جا رہی ہے

      return SizedBox(
        width: width,
        height: height,
        child: Card(
          color: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconA,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  textA,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}

//////////////
