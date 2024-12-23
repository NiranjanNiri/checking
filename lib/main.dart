import 'package:provider/provider.dart';  // <-- Added for state management
import 'package:untitled/imagepicker.dart';
import 'package:untitled/sujithu.dart';
import 'package:untitled/taskone.dart';
import 'TimeSwipe.dart';
import 'ThemeNotifier.dart';





import 'package:flutter/material.dart';
import 'package:untitled/BMI.dart';
import 'package:untitled/cola.dart';
import 'package:untitled/Spotify.dart';
import 'package:untitled/age.dart';
import 'package:untitled/age2.dart';
import 'package:untitled/monthfind.dart';
import 'package:untitled/insta.dart';
import 'package:untitled/listcardtap.dart';
import 'package:untitled/listthreedata.dart';
import 'package:untitled/listverti.dart';
import 'package:untitled/product.dart';
import 'package:untitled/ramanujam.dart';
import 'package:untitled/gtsettings.dart';
import 'package:untitled/taskfive.dart';
import 'package:untitled/taskfour.dart';
import 'package:untitled/tasksix.dart';
import 'package:untitled/taskthree.dart';
import 'package:untitled/tasktwo.dart';
import 'BotNavi.dart';
import 'amazon.dart';
import 'api8.dart';
import 'calcione.dart';
import 'dummy image.dart';
import 'gst.dart';
import 'listedit.dart';
import 'listview.dart';




void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),  // <-- Added provider to manage theme state
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    final themeNotifier = Provider.of<ThemeNotifier>(context);  // <-- Listen to theme changes


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',




      themeMode: themeNotifier.currentTheme,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: valid(),
    );
  }
}

