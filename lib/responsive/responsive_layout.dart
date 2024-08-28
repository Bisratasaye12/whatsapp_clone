import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone/screens/web_screen_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;
  const ResponsiveLayout(
      {Key? key, required this.mobileLayout, required this.webLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return const WebScreenLayout();
      } else {
        return const MobileScreenLayout();
      }
    });
  }
}
