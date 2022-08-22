import 'package:flutter/material.dart';

class Car extends StatelessWidget {
  const Car({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.local_taxi),
          SizedBox(height: 12,),
          Text('Car'),
        ],
      ),
    );
  }
}