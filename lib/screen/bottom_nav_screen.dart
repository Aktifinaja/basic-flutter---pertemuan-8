// ignore_for_file: library_private_types_in_public_api

import 'package:eight_meet/screen/bottom/alarm.dart';
import 'package:eight_meet/screen/bottom/clock.dart';
import 'package:eight_meet/screen/bottom/timer.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  static const String route = 'bottom_nav_screen';

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int index = 0;

  Widget renderScreen() {
    if (index == 0) {
      return const Alarm();
    } else if (index == 1) {
      return const Clock();
    } else {
      return const Timers();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Nav Bar Screen'),
      ),
      body: Center(
        child: renderScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (val) {
          setState(() {
            index = val;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'Clock',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Timer',
          ),
        ],
      ),
    );
  }
}
