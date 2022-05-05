import 'package:flutter/material.dart';
import 'package:itet_sciascia_app_mobile/pagine/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITET Sciascia App Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ITET Sciascia App Mobile'),
    );
  }
}
