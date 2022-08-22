import 'package:flutter/material.dart';

class Train extends StatelessWidget {
  const Train({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.train),
          SizedBox(height: 12,),
          Text('Train'),
        ],
      ),
    );
  }
}