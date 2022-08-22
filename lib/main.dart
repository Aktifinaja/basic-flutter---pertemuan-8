import 'package:eight_meet/screen/bottom_nav_screen.dart';
import 'package:eight_meet/screen/home_screen.dart';
import 'package:eight_meet/screen/landing_screen.dart';
import 'package:eight_meet/screen/replacement_screen.dart';
import 'package:eight_meet/screen/tabbar_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => const HomeScreen(),
        LandingScreen.route: (context) => const LandingScreen(),
        ReplacementScreen.route:(context) => const ReplacementScreen(),
        BottomNavScreen.route: (context) => const BottomNavScreen(),
        TabbarScreen.route: (context) => const TabbarScreen(),
      },
    );
  }
}