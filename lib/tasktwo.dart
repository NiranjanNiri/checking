import 'package:flutter/material.dart';

class tasktwo extends StatelessWidget {
  const tasktwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/download.jfif"),
              fit: BoxFit.fill,
          ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("assets/astro.png"),

                ),
              ),
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Container(
                    height: 160,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(image: AssetImage("assets/astro.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                          ),
                          Container(
                            height: 80,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/astro.png"),

                            ),
                          ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          Container(
                            height: 80,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/astro.png"),
                            ),
                          ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                          ),
                          Container(
                            height: 80,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/astro.png"),

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          Container(
                            height: 80,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/astro.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                width: 50,
              ),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/astro.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          width: 70,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          child:  Expanded(
                            child: Text("                                    Y'all gonna win I think so...You should also think so...Soo.soooo!!!"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Container(
                            height: 50,
                            width: 250,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20))),
                                hintText: "Enter Password",

                              ),
                            ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 40,
                        ),
                        ElevatedButton(onPressed: (){}, child: Text("Login")
                        ),


                      ],
                    )

                  ],
                ),
              ),
            ],

          ),
        ),
    );
  }
}
