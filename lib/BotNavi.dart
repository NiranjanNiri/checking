import 'package:flutter/material.dart';
import 'package:untitled/Spotify.dart';
import 'package:untitled/amazon.dart';
import 'package:untitled/insta.dart';
import 'package:untitled/gtsettings.dart';
import 'package:untitled/tasksix.dart';
import 'cola.dart';

class BotNavi extends StatefulWidget {
  const BotNavi({super.key});

  @override
  State<BotNavi> createState() => _BotNaviState();
}

class _BotNaviState extends State<BotNavi> {

  int z = 0;

  final pages = [
    amazon(),
    spoti(),
    insta(),
    settings(),
  ];


  tap(index)
  {
    setState(() {
      z = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[z],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Amazon",backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.music_video_sharp),label: "Spotify",backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.linked_camera_outlined),label: "Insta",backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings",backgroundColor: Colors.black),
          ],
        currentIndex: z,
        onTap: tap,
      ),
    );
  }
}


