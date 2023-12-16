import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Cloths extends StatefulWidget {
  const Cloths({Key? key}) : super(key: key);

  @override
  State<Cloths> createState() => _ClothsState();
}

class _ClothsState extends State<Cloths> {
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
