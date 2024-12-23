import 'package:flutter/material.dart';
import 'package:untitled/tasksix.dart';

import 'dummy image.dart';
class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

        leading: Icon(Icons.arrow_back,color: Colors.white,),
        title: Text("Menu",style: TextStyle(
          color: Colors.white,
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.home,color: Colors.white,),
          ),
        ],
      ),


      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           GestureDetector(
             onTap: (){

               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => const stillworking()),
               );
               },
             child: Card(
               elevation: 9,
               child: ListTile(
                 leading: Icon(Icons.contacts),
                 title: Text("Attendance report"),
                 trailing: Icon(Icons.arrow_right),
               ),
             ),
           ),
            GestureDetector(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const stillworking()),
                );
              },
              child: Card(
                elevation: 9,
                child: ListTile(
                  leading: Icon(Icons.report),
                  title: Text(" Mock Interview report"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const stillworking()),
                );
              },
              child: Card(
                elevation: 9,
                child: ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Payment report"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const stillworking()),
                );
              },
              child: Card(
                elevation: 9,
                child: ListTile(
                  leading: Icon(Icons.link),
                  title: Text(" All students project url"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const stillworking()),
                );
              },
              child: Card(
                elevation: 9,
                child: ListTile(
                  leading: Icon(Icons.time_to_leave),
                  title: Text("Leave Request"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const stillworking()),
                );
              },
              child: Card(
                elevation: 9,
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("Notifications"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const stillworking()),
                );
              },
              child: Card(
                elevation: 9,
                child: ListTile(
                  leading: Icon(Icons.feedback),
                  title: Text("Feedback"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const stillworking()),
                );
              },
              child: Card(
                elevation: 9,
                child: ListTile(
                  leading: Icon(Icons.group),
                  title: Text("Refer a Friend"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const tasksix()),
                );
              }, child: Text("Logout")),
            ),





















































































          ],
        ),
      ),


    );
  }
}
