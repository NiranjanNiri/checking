import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/tasksix.dart';

class taskfour extends StatelessWidget {
  const taskfour ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //FIRST BOX

              Row(
                children: [
                  Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage("assets/astro.png"),
                              fit: BoxFit.fill

                            ),
                          ),
                        ),

                        Text("ABC"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            image: DecorationImage(image: AssetImage("assets/astro.png")

                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          child: Text("         ABC"),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
                width: 80,
              ),




              Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/astro.png"),
                  fit:BoxFit.fill,
                  ),
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                    sigmaX: 20,
                    sigmaY: 20,
                  ),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/astro.png"),
                            fit: BoxFit.fill,
                            ),

                            borderRadius: BorderRadius.circular(90),
                            ),
                          ),
                        SizedBox(
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          height: 50,
                          width: 150,

                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              prefixIcon: Icon(Icons.person),
                              hintText: "Enter Name",
                            ),

                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          child: Text("Login")
                        ),








                      ],
                    ),
                  ),
                ),



              ),
              SizedBox(
                height: 30,
                width: 30,
              ),

              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const tasksix()),
                  );
                },
                child: Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("assets/astro.png"),

                      fit:BoxFit.fill,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 20,
                        sigmaY: 20,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/astro.png"),
                                fit: BoxFit.fill,
                              ),

                              borderRadius: BorderRadius.circular(90),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                          ),
                          Container(
                            height: 50,
                            width: 150,

                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                prefixIcon: Icon(Icons.person),
                                hintText: "Enter Name",
                              ),

                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                          ),
                          Container(
                              child: Text("Login")
                          ),








                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}
