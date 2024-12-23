
import 'dart:convert';
//5,6,9,10,11,12 via APIPHENY
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
class api8 extends StatefulWidget {
  const api8({super.key});

  @override
  State<api8> createState() => _api8State();
}

class _api8State extends State<api8> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }
  var a={};
  fetchdata()async{
    final response=await http.get(Uri.parse(
        "https://datausa.io/api/data?drilldowns=Nation&measures=Population"
    ));
    if(response.statusCode==200){
      setState(() {
        a=json.decode(response.body);
        print(a);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [



              a.isEmpty ? CircularProgressIndicator() : Text(a["data"][0]["ID Nation"].toString()),
              a.isEmpty ? CircularProgressIndicator() : Text(a["data"][0]["Nation"].toString()),
              a.isEmpty ? CircularProgressIndicator() : Text(a["data"][0]["ID Year"].toString()),
              a.isEmpty ? CircularProgressIndicator() : Text(a["data"][0]["Year"].toString()),
              a.isEmpty ? CircularProgressIndicator() : Text(a["data"][0]["Population"].toString()),
              a.isEmpty ? CircularProgressIndicator() : Text(a["data"][0]["Slug Nation"].toString()),

              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][1]["ID Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][1]["Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][1]["ID Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][1]["Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][1]["Population"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][1]["Slug Nation"].toString()),
              //
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][2]["ID Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][2]["Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][2]["ID Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][2]["Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][2]["Population"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][2]["Slug Nation"].toString()),
              //
              //
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][3]["ID Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][3]["Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][3]["ID Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][3]["Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][3]["Population"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][3]["Slug Nation"].toString()),
              //
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][4]["ID Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][4]["Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][4]["ID Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][4]["Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][4]["Population"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][4]["Slug Nation"].toString()),
              //
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][5]["ID Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][5]["Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][5]["ID Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][5]["Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][5]["Population"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][5]["Slug Nation"].toString()),
              //
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][6]["ID Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][6]["Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][6]["ID Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][6]["Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][6]["Population"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][6]["Slug Nation"].toString()),
              //
              //
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][7]["ID Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][7]["Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][7]["ID Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][7]["Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][7]["Population"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][7]["Slug Nation"].toString()),
              //
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][8]["ID Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][8]["Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][8]["ID Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][8]["Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][8]["Population"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][8]["Slug Nation"].toString()),
              //
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][9]["ID Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][9]["Nation"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][9]["ID Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][9]["Year"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][9]["Population"].toString()),
              // a.isEmpty ? CircularProgressIndicator() : Text(a["data"][9]["Slug Nation"].toString()),






            ],
          ),
        ),
      ),
    );
  }
}
