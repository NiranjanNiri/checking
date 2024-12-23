  import 'package:flutter/material.dart';
import 'package:untitled/BotNavi.dart';
import 'package:untitled/taskfour.dart';

  class tasksix extends StatefulWidget {
    const tasksix({super.key});

    @override
    State<tasksix> createState() => _tasksixState();
  }

  class _tasksixState extends State<tasksix> {

    final _formkey = GlobalKey<FormState>();
    bool isvisible=false;
    TextEditingController a=TextEditingController();//username
    TextEditingController b=TextEditingController();
    TextEditingController c=TextEditingController();
    TextEditingController d=TextEditingController();
    visiblity()
    {
      setState(() {
        isvisible=a.text.isNotEmpty&&b.text.isNotEmpty&&c.text.isNotEmpty&&d.text.isNotEmpty;
      });
    }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  ////////////////////////////////////////////////////
                  controller: a,
                  validator: (value) {
                    if ( value!.isEmpty||!RegExp(r"^[A-Za-z][A-Za-z0-9_]{7,29}$").hasMatch(value))
                    {
                      return "Enter your username";

                    }
                  },

                  onChanged: (value)
                  {
                    visiblity();
                  },
                  //////////////////////////////////////////////////////
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter Username",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: b,
                  onChanged: (value)
                  {
                    visiblity();
                  },
                  validator: (value) {
                    if ( value!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value))
                    {
                      return 'Please enter an email address';
                    }

                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter Email Address",
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: c,
                  onChanged: (value)
                  {
                    visiblity();
                  },
                  validator: (value) {
                    if ( value!.isEmpty||!RegExp( r'^(?:[+0][1-9])?[0-9]{10,12}$').hasMatch(value))
                    {
                      return 'Please enter phone number';
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter Phone Number",
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  controller: d,
                  onChanged: (value)
                  {
                    visiblity();
                  },
                  validator: (value) {
                    if ( value!.isEmpty||!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value))
                    {
                      return 'Please enter Password';
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter Password",
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Visibility(
                  visible: isvisible,
                  child: ElevatedButton(
                      onPressed: () {


                        if (_formkey.currentState!.validate())
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data'))
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const BotNavi()),
                          );
                        }

                        else{
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Please enter correct username and password'))
                          );
                        }
                      },
                      child: Text('Submit')
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  // class sample extends StatefulWidget {
  //   const sample({super.key});
  //
  //   @override
  //   State<sample> createState() => _sampleState();
  // }
  //
  // class _sampleState extends State<sample> {
  //   bool isvisible=false;
  //   TextEditingController a=TextEditingController();
  //   TextEditingController b=TextEditingController();
  //   visi(){
  //     setState(() {
  //       isvisible=a.text.isNotEmpty&&b.text.isNotEmpty;
  //     });
  //   }
  //   @override
  //   Widget build(BuildContext context) {
  //     return Scaffold(
  //       body: Column(
  //         children: [
  //           TextFormField(
  //             controller: a,
  //             onChanged: (value){
  //              visi();
  //             },
  //           ),
  //           TextFormField(
  //             controller: b,
  //             onChanged: (value){
  //              visi();
  //             },
  //           ),
  //           Visibility(
  //               visible: isvisible,
  //               child: ElevatedButton(onPressed: (){}, child: Text("data"))),
  //         ],
  //       ),
  //     );
  //   }
  // }

