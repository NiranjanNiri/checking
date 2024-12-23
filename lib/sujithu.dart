import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/tasksix.dart';
class sujithu extends StatefulWidget {
  const sujithu({super.key});

  @override
  State<sujithu> createState() => _sujithuState();
}

class _sujithuState extends State<sujithu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.greenAccent,
       leading: Icon(CupertinoIcons.square_arrow_right_fill),
       title: Center(child: Text("blablabla")),
       actions: [
         Icon(Icons.circle),
         Icon(CupertinoIcons.triangle)
       ],

     ),
      body:
      Column(
        children: [

      //1st row
      Row(
        children: [
          Text("sadfuhiusdhg"),
          Text("sadfuhiusdhg"),
          Text("sadfuhiusdhg"),
        ],
      ),

      //2nd row
      Row(
        children: [
         SizedBox(width: 50,),
          Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/astro.png"),
        ),
        border: Border.all(),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(image: AssetImage("assets/astro.png"),
                  ),

                ),
              ),


              SizedBox(width: 10,),



              Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(image: AssetImage("assets/astro.png"),
                      ),

                    ),
                  ),

                ],
              ),









              SizedBox(width: 10,),

              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(image: AssetImage("assets/astro.png"),
                  ),

                ),
              ),

            ],
          ),
          SizedBox(height: 10,
          width: 10,),
          Row(children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(image: AssetImage("assets/astro.png"),
                ),

              ),
            ),

            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(image: AssetImage("assets/astro.png"),
                ),

              ),
            ),



          ],),


        ],
      ),
          ),
        ],
      ),




      //tf field
      SizedBox(height: 100,),
       Container(
         height: 100,
         width: 300,
         child: TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        hintText: "enetr ur name",
        hintStyle: TextStyle(color: Colors.red,fontSize: 20,),

      ),
         ),
       ),


          //Buton

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>tasksix()),
            );


          }, child: Text("login")),
          SizedBox(
            height: 100,
          ),



          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(image: AssetImage("assets/astro.png"),
              ),

            ),
          ),













      ],
      ),

    );
  }
}


