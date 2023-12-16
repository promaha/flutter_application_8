// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// class Navgation extends StatefulWidget {
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class Navgation extends StatefulWidget {
  const Navgation({Key? key}) : super(key: key);

  @override
  State<Navgation> createState() => _NavgationState();
}

class _NavgationState extends State<Navgation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xffBAD1CD),
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
