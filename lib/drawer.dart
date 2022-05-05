import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  final coloreSfondo = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: coloreSfondo,
        child: ListView()
      )

    );
  }
}
