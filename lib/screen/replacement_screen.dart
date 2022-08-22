import 'package:eight_meet/screen/home_screen.dart';
import 'package:flutter/material.dart';

class ReplacementScreen extends StatelessWidget {
  const ReplacementScreen({Key? key}) : super(key: key);

  static const String route = 'replacement_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Replacement Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(HomeScreen.route);
          },
          child: const Text('Back To Home'),
        ),
      ),
    );
  }
}