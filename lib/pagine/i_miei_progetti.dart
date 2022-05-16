import 'package:flutter/material.dart';
import 'package:itet_sciascia_app_mobile/appbar.dart';

import '../drawer.dart';

class IMieiProgetti extends StatefulWidget {
  final title = 'I miei progetti';

  @override
  _IMieiProgettiState createState() => _IMieiProgettiState();
}

class _IMieiProgettiState extends State<IMieiProgetti> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppbar(),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("I miei progetti text" )

            ],
          ),
        ),
      drawer: Mydrawer()
    );
  }
}
