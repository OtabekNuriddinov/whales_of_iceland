import 'package:flutter/material.dart';

class Safety extends StatelessWidget {
  const Safety({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("Safety instructions", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}
