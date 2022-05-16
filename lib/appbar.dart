import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget  implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/appbar.png', fit: BoxFit.cover,),
      centerTitle: true,
      toolbarHeight: 100.0,
      backgroundColor: Colors.blue,
    );
  }

  @override
  Size preferredSize = Size(100, 100);
}
