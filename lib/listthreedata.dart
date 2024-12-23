  import 'package:flutter/material.dart';
import 'package:untitled/listedit.dart';

  class listthreedata extends StatefulWidget {
    const listthreedata({super.key});

    @override
    State<listthreedata> createState() => _listthreedataState();
  }

  class _listthreedataState extends State<listthreedata> {
    @override

    TextEditingController a = TextEditingController();
    TextEditingController b = TextEditingController();
    TextEditingController c = TextEditingController();
    List  inputs = [];
    //same as result from previous one
    update(){
      setState(() {
        if (a.text.isNotEmpty && b.text.isNotEmpty && c.text.isNotEmpty) {
          userdata summer = userdata(name: a.text, email: b.text, contactno: c.text,);
          inputs.add(summer);
          a.clear();
          b.clear();
          c.clear();
        }
        else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter all fields")),
          );
        }
      }
      );
    }

    edituser(int index) {

      Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => listedit(user: inputs[index],
            ),
          ),
      )
          .then(
              (updateduser) {
            if (updateduser != null){
              setState(() {
                inputs[index]=updateduser;
              }
              );
            }
          }
      );
    }//edituser
    




    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 60),
              Container(
                width: 350,
                child: TextFormField(
                  controller: a,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter your name",
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                width: 350,
                child: TextFormField(
                  controller: b,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter your email",
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                width: 350,
                child: TextFormField(
                  controller: c,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter your contact number",
                  ),
                ),
              ),
              SizedBox(height: 70),
              ElevatedButton(onPressed: (){
                update();
              },
                child: Text("Add Details"),
              ),
              SizedBox(height: 70),


              Container(
                height: 350,
                width: 400,
                color: Colors.white,
                child: ListView.builder(
                  itemCount: inputs.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.black,
                      child: ListTile(
                        title: Text("Name : ${inputs[index].name}\nEmail: ${inputs[index].email}\nContact: ${inputs[index].contactno}",

                          style: TextStyle(fontSize: 20,color: Colors.yellowAccent),),
                        trailing: Container(
                          width: 88,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    edituser(index);
                                  },
                                  icon: Icon(Icons.edit)),//EDIT
                              IconButton(onPressed: (){
                                setState(() {
                                  inputs.removeAt(index);
                                });
                              }, icon: Icon(Icons.delete)),//DELETE
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => listedit(user: inputs[index]),
                            ),
                          ).then(
                              (updateduser){
                                setState(() {
                                  inputs[index]=updateduser;
                                });

                              }
                          );
                        },
                      ),
                    );
                  },
                ),
              ),





























            ],
          ),
        ),









      );
    }
  }


  class userdata{
    String name;
    String email;
    String contactno;
    userdata({required this.name, required this.email, required this.contactno});
  }