import 'package:flickerlink/responsive/mobile_screen_layout.dart';
import 'package:flickerlink/responsive/responsive_layout_screen.dart';
import 'package:flickerlink/responsive/web_screen_layout.dart';
import 'package:flickerlink/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlickerLink',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),),
    );
  }
}
