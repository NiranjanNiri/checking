import 'package:flutter/material.dart';
import 'package:untitled/listthreedata.dart';
class listedit extends StatefulWidget {
  final userdata user;
  const listedit({super.key,required this.user});

  @override
  State<listedit> createState() => _listeditState();
}

class _listeditState extends State<listedit> {
  @override
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController c = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    a=TextEditingController(text: widget.user.name);
    b=TextEditingController(text: widget.user.email);
    c=TextEditingController(text: widget.user.contactno);
  }

   savechanges(){
    final updateduser = userdata(name: a.text, email: b.text, contactno: c.text
    );
    Navigator.pop(context, updateduser);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              height: 100,
              width: 200,
              child: TextFormField(
                controller: a,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
            ),
            SizedBox(height: 90),
            Container(
              height: 100,
              width: 200,
              child: TextFormField(
                controller: b,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
            ),
            SizedBox(height: 90),
            Container(
              height: 100,
              width: 200,
              child: TextFormField(
                controller: c,
                decoration: InputDecoration(
                    labelText: "Contact",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
            ),
            SizedBox(height: 90),
          ElevatedButton(
              onPressed: savechanges,
              child: Text("Update")
          ),

























          ],
        ),
      ),
    );
  }
}
