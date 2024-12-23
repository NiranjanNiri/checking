import 'package:flutter/material.dart';
import 'package:untitled/BMI.dart';
import 'package:untitled/Spotify.dart';
import 'package:untitled/age.dart';
import 'package:untitled/age2.dart';
import 'package:untitled/amazon.dart';
import 'package:untitled/calcione.dart';
import 'package:untitled/gst.dart';
import 'package:untitled/insta.dart';
import 'package:untitled/gtsettings.dart';
import 'package:untitled/tasksix.dart';

import 'cola.dart';

class ramanujam extends StatefulWidget {
  const ramanujam({super.key});

  @override
  State<ramanujam> createState() => _ramanujamState();
}

class _ramanujamState extends State<ramanujam> {

  int _index = 0;

  final pages = [
    calcione(),
    bmi(),
    gst(),
    age(),
    age2(),



  ];


  tap(index)
  {
    setState(() {
      _index = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined),label: "Arithmetic",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "BMI",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on),label: "GST",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.access_time_filled_sharp),label: "Age",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.cyclone),label: "Age manual",backgroundColor: Colors.black),
        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}


