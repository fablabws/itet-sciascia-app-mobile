import 'package:flutter/material.dart';
import 'package:itet_sciascia_app_mobile/appbar.dart';

import '../drawer.dart';

class MyHomePage extends StatefulWidget {
  final title = 'ITET Sciascia App Mobile';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppbar(),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Benvenuto nell'App dell'ITET Sciascia!" )

            ],
          ),
        ),
      drawer: Mydrawer()
    );
  }
}
