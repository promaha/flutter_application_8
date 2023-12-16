import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/lectures.dart';

// import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xffBAD1CD),
        //color: Colors.blueGrey,
        animationDuration: Duration(milliseconds: 300),
        items: const [
          //الشريط الي تحت
          Icon(Icons.search, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: CustomScrollView(
        slivers: [
          //appar

          const SliverAppBar(
            automaticallyImplyLeading: false,
            //toolbarHeight:MediaQuery.of(context).size.height/3,
            backgroundColor: Color(0xffBAD1CD),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
            ),
            expandedHeight: 300,
            floating: false,
            pinned: true,

            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text("المستويات",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      // fontFamily: 'ElMessiri',
                    )),
              ),
            ),
          ),

          //المستوى الاول
          SliverToBoxAdapter(
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(20000.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 100,
                    width: 400,
                    // color: Color.fromARGB(255, 3, 3, 3),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/level1.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Lectures()));
              },
            ),
          ),

          // // المستوى الثاني
          // SliverToBoxAdapter(
          //   child: TextButton(
          //     child: Padding(
          //       padding: const EdgeInsets.all(20.0),
          //       child: ClipRRect(
          //         borderRadius: BorderRadius.circular(10),
          //         child: Container(
          //           height: 100,
          //           width: 400,
          //           // decoration: const BoxDecoration(
          //           //   image: DecorationImage(
          //           //     image: AssetImage('images/level2.png'),
          //           //     fit: BoxFit.cover,
          //           //   ),
          //           // ),
          //         ),
          //       ),
          //     ),
          //     onPressed: () {},
          //   ),
          // ),

          // //المستوى الثالث
          // SliverToBoxAdapter(
          //   child: TextButton(
          //     child: Padding(
          //       padding: const EdgeInsets.all(20.0),
          //       child: ClipRRect(
          //         borderRadius: BorderRadius.circular(10),
          //         child: Container(
          //           height: 100,
          //           width: 400,
          //           // decoration: const BoxDecoration(
          //           //   image: DecorationImage(
          //           //       image: AssetImage('images/level3.png'),
          //           //       fit: BoxFit.cover),
          //           // ),
          //         ),
          //       ),
          //     ),
          //     onPressed: () {},
          //   ),
          // ),

          // //المستوى الرابع
          // SliverToBoxAdapter(
          //   child: TextButton(
          //     child: Padding(
          //       padding: const EdgeInsets.all(20.0),
          //       child: ClipRRect(
          //         borderRadius: BorderRadius.circular(10),
          //         child: Container(
          //           height: 100,
          //           width: 400,
          //           // decoration: const BoxDecoration(
          //           //   image: DecorationImage(
          //           //       image: AssetImage('images/level4.png'),
          //           //       fit: BoxFit.cover),
          //           // ),
          //         ),
          //       ),
          //     ),
          //     onPressed: () {},
          //   ),
          // ),

          // //المستوى الخامس
          // SliverToBoxAdapter(
          //   child: TextButton(
          //     child: Padding(
          //       padding: const EdgeInsets.all(20.0),
          //       child: ClipRRect(
          //         borderRadius: BorderRadius.circular(10),
          //         child: Container(
          //           height: 100,
          //           width: 400,
          //           // decoration: const BoxDecoration(
          //           //   image: DecorationImage(
          //           //       image: AssetImage('images/level5.png'),
          //           //       fit: BoxFit.cover),
          //           // ),
          //         ),
          //       ),
          //     ),
          //     onPressed: () {},
          //   ),
          // ),

          // //المستوى السادس
          // SliverToBoxAdapter(
          //   child: TextButton(
          //     child: Padding(
          //       padding: const EdgeInsets.all(20.0),
          //       child: ClipRRect(
          //         borderRadius: BorderRadius.circular(10),
          //         child: Container(
          //           height: 100,
          //           width: 400,
          //           // decoration: const BoxDecoration(
          //           //   image: DecorationImage(
          //           //       image: AssetImage('images/level6.png'),
          //           //       fit: BoxFit.cover),
          //           // ),
          //         ),
          //       ),
          //     ),
          //     onPressed: () {},
          //   ),
          // ),

          // //المستوى السابع
          // SliverToBoxAdapter(
          //   child: TextButton(
          //     child: Padding(
          //       padding: const EdgeInsets.all(20.0),
          //       child: ClipRRect(
          //         borderRadius: BorderRadius.circular(10),
          //         child: Container(
          //           height: 100,
          //           width: 400,
          //           // decoration: const BoxDecoration(
          //           //   image: DecorationImage(
          //           //       image: AssetImage('images/level7.png'),
          //           //       fit: BoxFit.cover),
          //           // ),
          //         ),
          //       ),
          //     ),
          //     onPressed: () {},
          //   ),
          // ),

          // //المستوى الثامن
          // SliverToBoxAdapter(
          //   child: TextButton(
          //     child: Padding(
          //       padding: const EdgeInsets.all(20.0),
          //       child: ClipRRect(
          //         borderRadius: BorderRadius.circular(10),
          //         child: Container(
          //           height: 100,
          //           width: 400,
          //           // decoration: const BoxDecoration(
          //           //   image: DecorationImage(
          //           //       image: AssetImage('images/level8.png'),
          //           //       fit: BoxFit.cover),
          //           // ),
          //         ),
          //       ),
          //     ),
          //     onPressed: () {},
          //   ),
          // ),
        ],
      ),
    );
  }
}
