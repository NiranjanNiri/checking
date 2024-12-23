import 'package:flutter/material.dart';
class valid extends StatefulWidget {
  const valid({super.key});

  @override
  State<valid> createState() => _validState();
}

class _validState extends State<valid> {
  @override
  Widget build(BuildContext context) {
    ////////////////////////////////////////
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
////////////////////////////////////
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                height: 100,
                width: 300,
                child: TextFormField(





                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                      return 'Please enter correct email address';
                    }
                    return null;
                  },






                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter something",
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
              ),
              Container(
                height: 100,
                width: 100,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter something",
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate())
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data'))
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

            ],
          ),
        )

    );
  }
}

