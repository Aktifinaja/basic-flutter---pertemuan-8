import 'package:eight_meet/screen/bottom_nav_screen.dart';
import 'package:eight_meet/screen/landing_screen.dart';
import 'package:eight_meet/screen/replacement_screen.dart';
import 'package:eight_meet/screen/tabbar_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String route = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // !Stack Navigation : Push
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(LandingScreen.route, arguments: 'Aja');
              },
              child: const Text('Push'),
            ),
            // !Stack Navigation : Push Replacement
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(ReplacementScreen.route);
              },
              child: const Text('Push Replacement'),
            ),
            // !BottomNavigationBar
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(BottomNavScreen.route);
              },
              child: const Text('BottomNavigationBar'),
            ),
            // !TabBar
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(TabbarScreen.route);
              },
              child: const Text('TabBar'),
            ),
          ],
        ),
      ),
    );
  }
}
