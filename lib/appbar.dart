import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget  implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/logo.jpeg', fit: BoxFit.cover,),

    );
  }

  @override
  Size preferredSize = Size(100, 100);
}
