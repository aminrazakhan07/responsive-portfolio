// import 'package:flutter/material.dart';
// import 'package:mob_desk_portfolio/screen_p2/responsive_lay/const_widget.dart';

// class TableteScr extends StatefulWidget {
//   const TableteScr({super.key});

//   @override
//   State<TableteScr> createState() => _TableteScrState();
// }

// class _TableteScrState extends State<TableteScr> {
//   @override
//   Widget build(BuildContext context) {
//     var response = MediaQuery.of(context).size.width;

//     return Scaffold(
//       drawer: allDrawer,
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('TABLATE'),
//         backgroundColor: appBarColor,
//       ),
//       body: Row(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: AspectRatio(
//                     aspectRatio: 4 / 2,
//                     child: Container(
//                       height: 100,
//                       color: Colors.blue[500],
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                     child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ListView.builder(
//                       itemCount: 8,
//                       itemBuilder: (context, index) {
//                         return Padding(
//                           padding: const EdgeInsets.only(top: 5.0),
//                           child: Container(
//                             height: 100,
//                             color: Colors.amber,
//                           ),
//                         );
//                       }),
//                 ))
//               ],
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: Colors.green[300],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


////////////////////////////////////////////////////////////////
     // Column(
                //   children: [
                //     ///////// 1 rows Card
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         containrCartd(Icons.flutter_dash, 'Flutter'),
                //         containrCartd(Icons.android, 'Android'),
                //         containrCartd(Icons.apple, 'Android'),
                //       ],
                //     ),

                //     ///////// 2 rows Card
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         containrCartd(Icons.web, 'Web'),
                //         containrCartd(Icons.cloud_upload, 'Cloud'),
                //         containrCartd(Icons.align_horizontal_center_rounded,
                //             'Block chain'),
                //       ],
                //     ),
                //     /////// 3 Rows Card
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         containrCartd(Icons.flutter_dash, 'Flutter'),
                //         containrCartd(Icons.android, 'Android'),
                //         containrCartd(Icons.apple, 'Android'),
                //       ],
                //     ),
                //     ////////
                //     // Column(
                //     //   children: List.generate(3, (rowIndex) {
                //     //     return Row(
                //     //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     //       children: [
                //     //         containrCartd(Icons.flutter_dash, 'Flutter'),
                //     //         containrCartd(Icons.android, 'Android'),
                //     //         containrCartd(Icons.apple, 'Apple'),
                //     //       ],
                //     //     );
                //     //   }),
                //     // ),
                //     ///////////

                //     // Column(
                //     //   children: List.generate(3, (rowIndex) {
                //     //     return Row(
                //     //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     //       children: items.map((item) {
                //     //         return Expanded(
                //     //           child: containrCartd(
                //     //             item['icon'],
                //     //             item['label'],
                //     //           ),
                //     //         );
                //     //       }).toList(),
                //     //     );
                //     //   }),
                //     // ),
                //     ////////////////////////////////
                //   ],
                // )
                //////////////
             