import 'package:flutter/material.dart';
import 'package:mob_desk_portfolio/screen_p2/responsive_lay/risponsive_lay.dart';
import 'package:mob_desk_portfolio/screen_p2/scr_desk_tab_mob/desktop.dart';
import 'package:mob_desk_portfolio/screen_p2/scr_desk_tab_mob/mob_src.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RisponsiveLayput(
        mobile: MobileScr(),
        // tablet: TableteScr(),
        desktop: DesktopScr(),
      ),
    );
  }
}
