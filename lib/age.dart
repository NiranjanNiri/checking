import 'package:flutter/material.dart';
class age extends StatefulWidget {
  const age({super.key});

  @override
  State<age> createState() => _ageState();

}

class _ageState extends State<age> {
  @override
  String myAge = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("Age Calculator")),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Text(
              'Your age is',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 50,
            ),
            Text(myAge,style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => pickDob(context),
              child:  Text('Pick Your Date of Birth'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  pickDob(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate != null) {
        calculateAge(pickedDate);
      }
    });
  }

  calculateAge(DateTime birth) {
    DateTime now = DateTime.now();
    Duration age = now.difference(birth);
    int years = age.inDays ~/ 365;
    int months = (age.inDays % 365) ~/ 30;
    int days = ((age.inDays % 365) % 30);
    setState(() {
      myAge = '$years years'
              ' $months months '
              ' $days days';
    });
  }
}