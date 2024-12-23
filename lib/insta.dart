import 'package:flutter/material.dart';
class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override


  List a=[
    "assets/luffy.png" ,
    "assets/luffy.png" ,
    "assets/luffy.png" ,
    "assets/luffy.png" ,
    "assets/luffy.png" ,
    "assets/luffy.png" ,
  ];
  List b =[
    "Favo",
    "Memories",
    "Me",
    "Yolo",
    "Sike",
    "Sub",
  ];
  List c=[
    "assets/zoro.png",
    "assets/zoro.png",
    "assets/zoro.png",
    "assets/zoro.png",
    "assets/zoro.png",
    "assets/zoro.png",
    "assets/zoro.png",
    "assets/zoro.png",
    "assets/zoro.png",
    "assets/zoro.png",
    "assets/zoro.png",
  ];



  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.black,
          body:  NestedScrollView(
          headerSliverBuilder: ((BuildContext context, bool innerBoxIsScrolled)
      {
        return [
          SliverAppBar(
            expandedHeight: 554,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                height: 500,
                width: 380,
                color:Colors.black,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.lock,color: Colors.white,),
                        SizedBox(width: 10),
                        Text("v_w_m.exe",style: TextStyle(color: Colors.white,fontSize: 20,),),
                        Icon(Icons.arrow_drop_down,color: Colors.white,),
                      ],
                    ), //v w me
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 412,
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Container(
                                height: 100,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/luffy.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),//profile pic
                              SizedBox(width:15,),
                              Container(
                                height: 100,
                                width: 257,
                                child: Column(
                                  children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 77,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left:30,top: 20),
                                                  child: Text("0",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 14,top:2),
                                                  child: Text("posts",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 90,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left:34,top: 20),
                                                  child: Text("89",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10,top:2),
                                                  child: Text("followers",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 90,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left:30,top: 20),
                                                  child: Text("100",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10,top:2),
                                                  child: Text("following",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  ],
                                ),
                              ),//followers following etc
                            ],
                          ),
                        ),//profile bar
                      ],
                    ),//profile bar
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 15),
                          child: Text("<3",style: TextStyle(color: Colors.white,fontSize: 14,),),
                        ),
                      ],
                    ),//start of bio
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Find peace in the imperfect present",style: TextStyle(color: Colors.white,fontSize: 14,),),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Trippin @xyz",style: TextStyle(color: Colors.white,fontSize: 14,),),
                        ),
                      ],
                    ), //start of bio
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("You'll never find me where u left me :)",style: TextStyle(color: Colors.white,fontSize: 14,),),
                        ),
                      ],
                    ),//END of bio
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height:  30,
                          width: 412,
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Container(
                                height: 30,
                                width: 170,
                                child: ElevatedButton(onPressed: (){},
                                    child: Text("Edit profile",style: TextStyle(color: Colors.white,fontSize: 10),),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black12,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),//button start
                              SizedBox(width: 7,),
                              Container(
                                height: 30,
                                width: 170,
                                child: ElevatedButton(onPressed: (){},
                                  child: Text("Share profile",style: TextStyle(color: Colors.white,fontSize: 10),),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black12,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),//B END
                              Icon(Icons.people_alt_sharp,color: Colors.white,),
                            ],
                          ),
                        ),//Button
                      ],
                    ),//Buttons
                    SizedBox(height: 25,),
                    Container(
                      height: 200,
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
                                    width: 86,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(a[index]),
                                            fit: BoxFit.fill)
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 7),
                                    child: Text(b[index],style: TextStyle(color: Colors.white),),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),//highlights list builder
                  ],
                ),
              ),
            ),

            bottom:  TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,

              tabs: [
                Tab(icon: Icon(Icons.border_all_sharp)),
                Tab(icon: Icon(Icons.video_collection_outlined)),
                Tab(icon: Icon(Icons.perm_contact_cal_outlined)),
              ],

            ),

          ),
        ];
      }
      ),

      body: TabBarView(children: [
        Container(
          height: 400,
          child: GridView.builder(
              itemCount: c.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index){
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                          image: AssetImage(c[index]),fit: BoxFit.fill)
                  ),
                );
              }),
        ),
        Container(
          height: 400,
          child: GridView.builder(

              itemCount: c.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index){
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                          image: AssetImage(c[index]),fit: BoxFit.fill)
                  ),
                );
              }),
        ),
        Container(
          height: 400,
          child: GridView.builder(

              itemCount: c.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index){
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                          image: AssetImage(c[index]),fit: BoxFit.fill)
                  ),
                );
              }),
        ),
      ]),
          ),

      ),
    );
  }
}
