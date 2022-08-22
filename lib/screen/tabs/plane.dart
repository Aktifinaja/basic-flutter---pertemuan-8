import 'package:flutter/material.dart';

class Plane extends StatelessWidget {
  const Plane({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.airplanemode_active),
          SizedBox(height: 12,),
          Text('Plane'),
        ],
      ),
    );
  }
}