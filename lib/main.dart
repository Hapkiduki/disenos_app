import 'package:disenos_app/src/pages/emergency_page.dart';
import 'package:flutter/material.dart';
//import 'package:disenos_app/src/pages/pinterest_page.dart';

//import 'package:disenos_app/src/pages/headers_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: EmergencyPage(),
    );
  }
}

