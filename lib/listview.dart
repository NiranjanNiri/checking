import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  List a=[
    "assets/astro.png",
    "assets/bg.png",
    "assets/homepage.png",
    "assets/astro.png",
    "assets/bg.png",
    "assets/homepage.png",
  ];
  List b=[
    "data",
    "data1",
    "data2",
    "data",
    "data1",
    "data2",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height:200,
            child: CarouselSlider.builder(
              
              options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 1,
            ), itemCount: a.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(a[index]),fit: BoxFit.fill)
                  ),
                );
              }, ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: a.length,
              scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(a[index]),fit: BoxFit.fill)
                      ),
                    ),
                    Text(b[index])
                  ],
                ),
              );
            }),
          ),

          Container(
            height: 400,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: a.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index){
              return Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage(a[index]),fit: BoxFit.fill)
                ),
              );
                }),
          ),
        ],
      ),
    );
  }
}
