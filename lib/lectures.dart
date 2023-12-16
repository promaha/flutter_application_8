import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_application_8/cloths.dart';
import 'package:flutter_application_8/home.dart';
// import 'package:flutter_application_8/cloths.dart';
// import 'package:flutter_application_8/colors.dart';
// import 'package:flutter_application_8/family.dart';
// import 'package:flutter_application_8/letters.dart';
// import 'package:flutter_application_8/numbers.dart';
// import 'package:flutter_application_8/quiz.dart';
import '';

// import 'package:flutter_application_1/navigationbar.dart';

class Lectures extends StatefulWidget {
  const Lectures({Key? key}) : super(key: key);

  @override
  State<Lectures> createState() => _LecturesState();
}

class _LecturesState extends State<Lectures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          //head
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Hello Ahad!',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white)),
                  subtitle: Text('Good Morning',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white54)),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/lo.png'),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            height: 1000,
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
//padding: EdgeInsets.only(bottom: 200),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: GridView.count(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  //numbers
                  toNewLessons(context, "Letters",
                      "images/letters-removebg-preview.png"),
                  toNewLessons(context, "Numbers",
                      "images/numbers-removebg-preview.png"),
                  toNewLessons(
                      context, "Colors1", "images/colors-removebg-preview.png"),
                  toNewLessons(
                      context, "Family", "images/family-removebg-preview.png"),
                  toNewLessons(
                      context, "Cloths", "images/cloths-removebg-preview.png"),
                  toNewLessons(
                      context, "Quiz", "images/quiz-removebg-preview.png"),
                  // Expanded(
                  //   child: Container(
                  //     padding: const EdgeInsets.all(0),
                  //     decoration: BoxDecoration(
                  //         color: Color(0xFFe9ecef),
                  //         borderRadius: BorderRadius.circular(10),
                  //         boxShadow: [
                  //           BoxShadow(
                  //               offset: const Offset(0, 5),
                  //               color: Theme.of(context)
                  //                   .primaryColor
                  //                   .withOpacity(.2),
                  //               spreadRadius: 2,
                  //               blurRadius: 5)
                  //         ]),
                  //     child: TextButton(
                  //       style: ButtonStyle(),
                  //       child: Image(
                  //           image: AssetImage(
                  //               "images/cloths-removebg-preview.png")),
                  //       onPressed: () {
                  //         Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: ((context) => Cloths())));
                  //       },
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
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

toNewLessons(BuildContext context, String pageName, String magePath) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: Color(0xFFe9ecef),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).primaryColor.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 5)
          ]),
      child: TextButton(
        style: ButtonStyle(),
        child: Image(image: AssetImage(magePath)),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => getPageByName(pageName))));
        },
      ),
    ),
  );
}

Widget getPageByName(String? pageName) {
  if (pageName != null) {
    switch (pageName) {
      case 'Home':
        return Home();
      // case 'Cloths':
      //   return Cloths();
      default:
        return Cloths();
    }
  } else {
    return Cloths();
  }
}
