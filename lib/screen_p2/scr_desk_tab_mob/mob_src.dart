// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_function_type_syntax_for_parameters, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:mob_desk_portfolio/screen_p1/home_widget.dart';
import 'package:mob_desk_portfolio/screen_p2/responsive_lay/const_widget.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';

class MobileScr extends StatefulWidget {
  const MobileScr({super.key});

  @override
  State<MobileScr> createState() => _HomePageState();
}

class _HomePageState extends State<MobileScr> {
  final List<Map<String, dynamic>> itemsCard = [
    {'icon': Icons.flutter_dash, 'text': 'Flutter UI'},
    {'icon': Icons.android, 'text': 'Android '},
    {'icon': Icons.apple, 'text': 'iPhone '},
    {'icon': Icons.settings, 'text': 'Settings'},
    {'icon': Icons.search, 'text': 'Search'},
    {'icon': Icons.account_circle, 'text': 'Profile'},
    {'icon': Icons.notifications, 'text': 'Notifications'},
    {'icon': Icons.camera, 'text': 'Camera'},
    {'icon': Icons.mail, 'text': 'Mail'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   leading: PopupMenuButton(
      //       icon: Icon(Icons.menu),
      //       iconColor: Colors.white,
      //       color: Colors.black,
      //       itemBuilder: (context) => [
      //             PopupMenuItem(
      //               child: TextButton(
      //                 onPressed: () {
      //                   Navigator.pushNamed(context, 'Projects');
      //                 },
      //                 child: Text(
      //                   'Project',
      //                   style: TextStyle(color: Colors.white),
      //                 ),
      //               ),
      //               value: 1,
      //             ),
      //             PopupMenuItem(
      //               child: TextButton(
      //                 onPressed: () {
      //                   Navigator.pushNamed(context, 'AboutMe');
      //                 },
      //                 child: Text(
      //                   'about me',
      //                   style: TextStyle(color: Colors.white),
      //                 ),
      //               ),
      //               value: 2,
      //             )
      //           ]),
      //   backgroundColor: Colors.transparent,
      // ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "MOBILE",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      drawer: newDrawer,

      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.34, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),

        body: Container(
          margin: EdgeInsets.only(top: 55),
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 4 / 2,
                child: Container(
                  // margin: EdgeInsets.only(left: 8, right: ),
                  child: ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black, Colors.transparent])
                          .createShader(Rect.fromLTRB(
                        0,
                        0,
                        rect.height,
                        rect.width,
                      ));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset('asset/dtm.jpg'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49, left: 10),
                child: Column(
                  children: [
                    Text(
                      'Raza Khan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'LEGO',
                      ),
                    ),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        //////// bottom SlidingSheet
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(top: 30, left: 20, right: 20),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myAchieve('72', 'Project'),
                      myAchieve('65', 'Clients'),
                      myAchieve('92', 'Messages'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Specialized in',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1,
                    ),
                    itemCount: itemsCard.length,
                    itemBuilder: (context, index) {
                      var item = itemsCard[index];
                      return containrCartd(item['icon'], item['text']);
                    },
                  ),
                )),
              ],
            ),
          );
        },
      ),
    );
  }
}
/// lapscr.jpg