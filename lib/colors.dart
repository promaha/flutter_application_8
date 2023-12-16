import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Colors1 extends StatefulWidget {
  const Colors1({Key? key}) : super(key: key);

  @override
  State<Colors1> createState() => _Colors1State();
}

class _Colors1State extends State<Colors1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// bottomNavigationBar
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: const <Widget>[
          //الشريط الي تحت
          Icon(Icons.search, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
