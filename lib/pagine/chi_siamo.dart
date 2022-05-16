import 'package:flutter/material.dart';
import 'package:itet_sciascia_app_mobile/appbar.dart';

import '../drawer.dart';

class ChiSiamo extends StatefulWidget {
  final title = 'Chi Siamo';

  @override
  _ChiSiamoState createState() => _ChiSiamoState();
}

class _ChiSiamoState extends State<ChiSiamo> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppbar(),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Chi siamo text" )

            ],
          ),
        ),
      drawer: Mydrawer()
    );
  }
}
