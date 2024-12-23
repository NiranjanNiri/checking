import 'package:flutter/material.dart';
class b1 extends StatefulWidget {
  const b1({super.key});

  @override
  State<b1> createState() => _b1State();
}

class _b1State extends State<b1> {
  @override
  TextEditingController a = TextEditingController();
  String s1="January";
  String s2="February";
  String s3="March";
  String s4="April";
  String s5="May";
  String s6="June";
  String s7="July";
  String s8="August";
  String s9="September";
  String s10="October";
  String s11="November";
  String s12="December";

  compare(){
    int grade = int.parse(a.text);
switch(grade) {
  case 1: print(s1);
  case 2: print("$s2");
  case 3: print("$s3");
  case 4: print("$s4");
  case 5: print("$s5");
  case 6: print("$s6");
  case 7: print("$s7");
  case 8: print("$s8");
  case 9: print("$s9");
  case 10: print("$s10");
  case 11: print("$s11");
  case 12: print("$s12");

  default :
    {
      print("You entered wrong number");
    }
}
  }

  Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        Center(
          child: Column(
            children: [
              TextFormField(
                controller: a,
              ),
              ElevatedButton(onPressed: (){
                compare();
              },
                  child: Text("Find month name"))
            ],
          ),
        )
      ],
    )
  );
  }
}
