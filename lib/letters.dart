import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Letters extends StatefulWidget {
  const Letters({Key? key}) : super(key: key);

  @override
  State<Letters> createState() => _LettersState();
}

class _LettersState extends State<Letters> {
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
