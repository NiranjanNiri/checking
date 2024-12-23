import 'package:flutter/material.dart';
class DetailsPage extends StatefulWidget {
  final int answer;
  const DetailsPage ({super.key,required this.answer});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  late int display;
  TextEditingController b = TextEditingController();

  void initState() {
    super.initState();
    // Initialize displayValue with the passed value
    display = widget.answer;
  }





  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 400,
                ),
                Text(
                  display.toString(), style: TextStyle(fontSize: 40,color: Colors.red),
                ),
              ],
            ),
          ],
        ),


      ),
    );
  }
}

//  final List <int> inputs;
