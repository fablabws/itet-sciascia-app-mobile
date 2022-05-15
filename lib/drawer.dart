import 'package:flutter/material.dart';
import 'package:itet_sciascia_app_mobile/pagine/homepage.dart';

class Mydrawer extends StatelessWidget {
  final coloreSfondo = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: coloreSfondo,
        child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget> [
        DrawerHeader(
        child: Image.asset('assets/logo.jpeg', alignment: Alignment.topLeft),
      ),
        _createDrawerItem(text: 'Homepage', onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage())
                );
              }
            )
          ],
      )
    )

    );
  }

  Widget _createDrawerItem(
      {required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 1.0),
            child: Text(text, style: TextStyle(fontSize: 22, color: Colors.white)),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
