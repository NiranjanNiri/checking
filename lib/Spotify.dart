import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class spotify extends StatefulWidget {
  const spotify({super.key});


  @override
  State<spotify> createState() => _spotifyState();
}
class _spotifyState extends State<spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF3E372C),
                Color(0xFF1E1D19),
              ],
            )
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back,color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 20,

                ),
                Container(
                  height:50,
                  width: 280,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Find in playlist",
                      hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),

                  ),
                SizedBox(
                  height: 50,
                  width: 20,
                ),
               ElevatedButton( onPressed: () => z(context),
                   style: ElevatedButton.styleFrom(
                   backgroundColor:  Color(0xFF3E372C),
               ),
                   child: Text("Sort",style: TextStyle(color: Colors.white),)
               ),

              ],
            ),
            Row(
              children: [
                DefaultTabController(
                  length: 2,
                  child: NestedScrollView(
                    headerSliverBuilder: ((BuildContext context, bool innerBoxIsScrolled)
                    {
                      return [
                        SliverAppBar(
                          expandedHeight: 400,
                          flexibleSpace: FlexibleSpaceBar(
                            background: Column(
                              children: [
                                Container(
                                  height:400,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/homepage.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ];
                    }
                    ),
                    body: Column(
                      children: [
                        CircleAvatar(),
                        CircleAvatar(), CircleAvatar(), CircleAvatar(), CircleAvatar(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class z {

   z(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.black,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Text("    Sort by",style: TextStyle(color: Colors.white)),
                ],
              ),

              ListTile(
                title: Text('Title',style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ), ListTile(
                title: Text('Recently added',style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ), ListTile(
                title: Text('Artist',style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ), ListTile(
                title: Text('Album',style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ), ListTile(
                title: Text('Custom',style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

            ],
          ),
        );
      },
    );
  }

}

class spoti extends StatefulWidget {
  const spoti({super.key});

  @override
  State<spoti> createState() => _spotiState();
}

class _spotiState extends State<spoti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: ((BuildContext context, bool innerBoxIsScrolled)
        {
          return [
            SliverAppBar(
              leading: Icon(Icons.arrow_back,color: Colors.white,),
              expandedHeight: 455,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  height: 455,
                  width: 300,
                  color:Color(0xFF3E372C),
                  child: Column(
                    children: [
                      Container(
                        height:455,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                              Color(0xFF3E372C),
                              Colors.black,
                          ]
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                    height:50,
                                    width: 266,
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.search,color: Colors.white),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                        hintText: "Find in playlist",
                                        hintStyle: TextStyle(color: Colors.white),
                                      ),

                                    ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                ElevatedButton(onPressed: (){},
                                    style:  ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF3E372C),
                                    ),
                                    child: Text("Sort",style: TextStyle(color: Colors.white),)),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height:300,
                              width: 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/spotipic.png"),
                                fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ),
          ];
        }
        ),


        body: SingleChildScrollView(
          child: Column(
            children: [
             Row(
               children: [
                 SizedBox(width: 10,),
                 Text("A mixed bag of melodies from 90s!",style: TextStyle(color: Colors.white),),
               ],
             ),
              SizedBox(height: 8,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Made for ",style: TextStyle(color: Colors.white),),
                  Text("Niri",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text("189,062 likes • 6h 40 min ",style: TextStyle(color: Colors.white),),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 412,
          
                    child: Row(
                      children: [
                        SizedBox(width: 15),
                        Icon(CupertinoIcons.heart_fill,color: Colors.green),
                        SizedBox(width: 20),
                        Icon(CupertinoIcons.arrow_down_circle,color: Colors.white70,),
                        SizedBox(width: 20),
                        Icon(CupertinoIcons.ellipsis_vertical,color: Colors.white60,),
                        SizedBox(width: 180),
                        Icon(CupertinoIcons.shuffle_medium,size: 30,color: Colors.green,),
                        SizedBox(width: 17),
                        Icon(CupertinoIcons.play_circle_fill,size: 54,color: Colors.green,)
                      ],
                    ),
                  ),
          
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 412,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height:50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/nenjukkul.jpg"),
                            fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 270,
                          child: Column(
                            children: [
                              Row(
                              children: [
                                Text("Nenjukkul Peidhidum",style: TextStyle(color: Colors.white),),
                              ],
                            ),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Text("Harris Jayaraj,Hariharan,Devan ekambar...",style: TextStyle(fontSize:10,color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(CupertinoIcons.heart_fill,color: Colors.green,),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width:20,
                          child: Icon(CupertinoIcons.ellipsis_vertical,color: Colors.white60,),
                        ),
                      ],
                    ),
                  ),
          
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 412,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height:50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/nenjukkul.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 270,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Nenjukkul Peidhidum",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Text("Harris Jayaraj,Hariharan,Devan ekambar...",style: TextStyle(fontSize:10,color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(CupertinoIcons.heart_fill,color: Colors.green,),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width:20,
                          child: Icon(CupertinoIcons.ellipsis_vertical,color: Colors.white60,),
                        ),
                      ],
                    ),
                  ),
          
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 412,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height:50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/nenjukkul.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 270,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Nenjukkul Peidhidum",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Text("Harris Jayaraj,Hariharan,Devan ekambar...",style: TextStyle(fontSize:10,color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(CupertinoIcons.heart_fill,color: Colors.green,),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width:20,
                          child: Icon(CupertinoIcons.ellipsis_vertical,color: Colors.white60,),
                        ),
                      ],
                    ),
                  ),
          
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 412,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height:50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/nenjukkul.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 270,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Nenjukkul Peidhidum",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Text("Harris Jayaraj,Hariharan,Devan ekambar...",style: TextStyle(fontSize:10,color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(CupertinoIcons.heart_fill,color: Colors.green,),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width:20,
                          child: Icon(CupertinoIcons.ellipsis_vertical,color: Colors.white60,),
                        ),
                      ],
                    ),
                  ),
          
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 412,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height:50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/nenjukkul.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 270,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Nenjukkul Peidhidum",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Text("Harris Jayaraj,Hariharan,Devan ekambar...",style: TextStyle(fontSize:10,color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(CupertinoIcons.heart_fill,color: Colors.green,),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width:20,
                          child: Icon(CupertinoIcons.ellipsis_vertical,color: Colors.white60,),
                        ),
                      ],
                    ),
                  ),
          
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 412,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height:50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/nenjukkul.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 270,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Nenjukkul Peidhidum",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Text("Harris Jayaraj,Hariharan,Devan ekambar...",style: TextStyle(fontSize:10,color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(CupertinoIcons.heart_fill,color: Colors.green,),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width:20,
                          child: Icon(CupertinoIcons.ellipsis_vertical,color: Colors.white60,),
                        ),
                      ],
                    ),
                  ),
          
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 412,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height:50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/nenjukkul.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 270,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Nenjukkul Peidhidum",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Text("Harris Jayaraj,Hariharan,Devan ekambar...",style: TextStyle(fontSize:10,color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(CupertinoIcons.heart_fill,color: Colors.green,),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width:20,
                          child: Icon(CupertinoIcons.ellipsis_vertical,color: Colors.white60,),
                        ),
                      ],
                    ),
                  ),
          
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 412,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height:50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/nenjukkul.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 270,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Nenjukkul Peidhidum",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Text("Harris Jayaraj,Hariharan,Devan ekambar...",style: TextStyle(fontSize:10,color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(CupertinoIcons.heart_fill,color: Colors.green,),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width:20,
                          child: Icon(CupertinoIcons.ellipsis_vertical,color: Colors.white60,),
                        ),
                      ],
                    ),
                  ),
          
                ],
              ),
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}

