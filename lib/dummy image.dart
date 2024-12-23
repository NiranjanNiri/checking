import 'package:flutter/material.dart';
class stillworking extends StatefulWidget {
  const stillworking({super.key});

  @override
  State<stillworking> createState() => _stillworkingState();
}

class _stillworkingState extends State<stillworking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/working.png")),
        ) ,
      ),
    );
  }
}
