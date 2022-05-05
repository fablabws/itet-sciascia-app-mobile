import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget  implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: 'ITET Sciascia App Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ITET Sciascia App Mobile'),
    );
  }
}
