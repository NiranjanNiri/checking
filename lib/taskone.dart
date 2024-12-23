import 'package:flutter/material.dart';

class taskone extends StatelessWidget {
  const taskone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 200,
                width: 30,
              ),
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(image: AssetImage("assets/astro.png"),
                  ),
                ),

              ),
               SizedBox(
                height: 200,
                width: 20,
              ),
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(image: AssetImage("assets/astro.png"),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(image: AssetImage("assets/astro.png"),fit: BoxFit.fill),
              ),
              child: Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: TextFormField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    hintText: "Enter Name",
                  ),
                ),
      ),
      SizedBox(
        height: 1,
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: TextFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            hintText: "Password",
          ),

                ),
      ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom
                  (
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Text("Login",style: TextStyle(color: Colors.deepOrange),),
              ),

    ],
    ),
            ),
          )
        ],
      )

    );
  }
}

