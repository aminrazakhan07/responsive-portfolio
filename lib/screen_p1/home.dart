// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:mob_desk_portfolio/screen_p1/home_widget.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Portfolio'),
        leading: PopupMenuButton(
          icon: Icon(Icons.menu),
          iconColor: Colors.black,
          color: Colors.black,
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'ProjectsScreen');
                },
                child: Text(
                  'Projects',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'AboutScreen');
                },
                child: Text(
                  'About Me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              value: 2,
            )
          ],
        ),
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.34, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 500,
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'asset/win1.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Positioned text outside the ShaderMask
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: MediaQuery.of(context).size.width * 0.5 - 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(top: 30, left: 20, right: 20),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 11.0, right: 11.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myAchieve('72', 'Projects'),
                        myAchieve('65', 'Clients'),
                        myAchieve('92', 'Messages'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Specialized in',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      int cardCount = 9;
                      return GridView.builder(
                        physics: ScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: constraints.maxWidth > 600
                              ? 4
                              : 3, // 4 for desktop, 3 for mobile
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          switch (index) {
                            case 0:
                              return containrCartd(
                                  Icons.flutter_dash, 'Flutter');
                            case 1:
                              return containrCartd(Icons.android, 'Android');
                            case 2:
                              return containrCartd(Icons.apple, 'iOS');
                            case 3:
                              return containrCartd(Icons.web, 'Web');
                            case 4:
                              return containrCartd(Icons.cloud_upload, 'Cloud');
                            case 5:
                              return containrCartd(
                                  Icons.account_balance_wallet, 'Blockchain');
                            case 6:
                              return containrCartd(
                                  Icons.device_hub, 'Device Hub');
                            case 7:
                              return containrCartd(
                                  Icons.developer_board, 'Dev Board');
                            case 8:
                              return containrCartd(
                                  Icons.cloud, 'Cloud Services');
                            default:
                              return SizedBox.shrink();
                          }
                        },
                        itemCount: cardCount,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
