import 'package:flutter/material.dart';

class RisponsiveLayput extends StatelessWidget {
  final Widget mobile;
  // final Widget tablet;
  final Widget desktop;

  const RisponsiveLayput({
    super.key,
    required this.mobile,
    // required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 1000) {
          return mobile;
        } else {
          return desktop;
        }
        /////////////  with Tablet
        // if (constrains.maxWidth < 500) {
        //   return mobile;
        // } else if (constrains.maxWidth < 1100) {
        //   return tablet;
        // } else {
        //   return desktop;
        // }
      },
    );
  }
}
