// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

var appBarColor = Colors.grey[300];
var contanColors = Colors.black;
////////////////////////////////
// var newDrawer = Drawer(
//   child: Column(
//     children: [
//       DrawerHeader(
//         child: Icon(
//           Icons.person,
//           color: Colors.pink,
//         ),
//       ),
//       Divider(),
//       ListTile(
//         leading: Icon(
//           Icons.home_outlined,
//           color: Colors.pink[300],
//         ),
//         title: Text(
//           'Home',
//           style: TextStyle(
//             color: Colors.pink[300],
//           ),
//         ),
//       ),
//       ListTile(
//         leading: Icon(
//           Icons.notification_add_outlined,
//           color: Colors.pink[300],
//         ),
//         title: Text(
//           'Notifications',
//           style: TextStyle(
//             color: Colors.pink[300],
//           ),
//         ),
//       ),
//       ListTile(
//         leading: Icon(
//           Icons.watch_later_outlined,
//           color: Colors.pink[300],
//         ),
//         title: Text(
//           'Duration',
//           style: TextStyle(
//             color: Colors.pink[300],
//           ),
//         ),
//       ),
//       Divider(),
//       ////
//       ListTile(
//         leading: Icon(
//           Icons.info_outline,
//           color: Colors.pink[300],
//         ),
//         title: Text(
//           'Information',
//           style: TextStyle(
//             color: Colors.pink[300],
//           ),
//         ),
//       ),
//       ListTile(
//         leading: Icon(
//           Icons.logout,
//           color: Colors.pink[300],
//         ),
//         title: Text(
//           'Home',
//           style: TextStyle(
//             color: Colors.pink[300],
//           ),
//         ),
//       ),
//     ],
//   ),
// );

///////////

var newDrawer = Drawer(
  child: Container(
    width: 110,

    color: Colors.white, // Drawer background color
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        // Drawer Header
        SizedBox(
          height: 300,
          child: DrawerHeader(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.black,
                    )),
                SizedBox(height: 10),
                Text(
                  'Raza Khan',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'razaamin07@gmail.com',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
        // Drawer Items
        ListTile(
          leading: Icon(Icons.home, color: Colors.black),
          title: Text('Home', style: TextStyle(fontSize: 18)),
          onTap: () {
            // Handle the navigation
          },
        ),
        ListTile(
          leading: Icon(Icons.analytics_outlined, color: Colors.black),
          title: Text('Project', style: TextStyle(fontSize: 18)),
          onTap: () {
            // Handle the navigation
          },
        ),

        ListTile(
          leading: Icon(Icons.account_circle, color: Colors.black),
          title: Text('Profile', style: TextStyle(fontSize: 18)),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading:
              Icon(Icons.notification_important_outlined, color: Colors.black),
          title: Text('Notification', style: TextStyle(fontSize: 18)),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.black),
          title: Text('Settings', style: TextStyle(fontSize: 18)),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.logout, color: Colors.red[500]),
          title: Text('Logout',
              style: TextStyle(fontSize: 18, color: Colors.red[500])),
          onTap: () {},
        ),
      ],
    ),
  ),
);
