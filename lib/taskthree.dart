import 'package:flutter/material.dart';
class taskthree extends StatelessWidget {
  const taskthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
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
         Row(
           children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(image: AssetImage("assets/astro.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(image: AssetImage("assets/astro.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(image: AssetImage("assets/astro.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(image: AssetImage("assets/astro.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
             SizedBox(
               height: 10,
               width: 10,
             ),
             Container(
               height: 200,
               width: 200,
               decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage("assets/astro.png")
                 ),
               ),
             ),
           ],
         ),
      SizedBox(
        height: 20,
        width: 20,
      ),


         Row(
           children: [
             Container(
               height: 200,
               width: 200,
               decoration: BoxDecoration(
                 border: Border.all(),
                 image: DecorationImage(image: AssetImage("assets/astro.png"),
                   fit: BoxFit.fill,
                 ),
               ),
             ),




         Row(
           children: [
             Column(
               children: [
                 Row(
                   children: [
                     Container(
                       height: 100,
                       width: 100,
                       decoration: BoxDecoration(
                         border: Border.all(),
                         image: DecorationImage(image: AssetImage("assets/astro.png"),
                           fit: BoxFit.fill,
                         ),
                       ),
                     ),
                     Container(
                       height: 100,
                       width: 100,
                       decoration: BoxDecoration(
                         border: Border.all(),
                         image: DecorationImage(image: AssetImage("assets/astro.png"),
                           fit: BoxFit.fill,
                         ),
                       ),
                     ),
                   ],
                 ),
                 Row(
                   children: [
                     Container(
                       height: 100,
                       width: 100,
                       decoration: BoxDecoration(
                         border: Border.all(),
                         image: DecorationImage(image: AssetImage("assets/astro.png"),
                           fit: BoxFit.fill,
                         ),
                       ),
                     ),
                     Container(
                       height: 100,
                       width: 100,
                       decoration: BoxDecoration(
                         border: Border.all(),
                         image: DecorationImage(image: AssetImage("assets/astro.png"),
                           fit: BoxFit.fill,
                         ),
                       ),
                     ),
                   ],
                 )
               ],
             ),
           ],
         ),
                 ],
         ),
      SizedBox(
        height: 30,
        width: 30,
      ),

               Container(
                 height: 100,
                 width: 350,
                 decoration: BoxDecoration(
                   border: Border.all(),
                 ),
      child: Row(
        children: [
          Container(
            width: 150 ,
            child: TextFormField(
              decoration:  InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: "Enter Password",

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("Login")),
          ),
        ],
      ),
               ),



       ],
           ),
      ),
    );

  }
}
