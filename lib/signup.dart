import 'package:flutter/material.dart';
import 'package:flutter_application_8/home.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        //image of logo,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Container(
                        width: 180,
                        height: 180,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/2.png"),
                            fit: BoxFit.cover,
                          ),
                        ))),

                //title

                const SizedBox(
                  height: 0,
                ),
                const Text('تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),

                //الايميل
                SizedBox(
                  height: 5,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 237, 231, 224),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.assignment_ind_sharp),
                            hintText: 'الاسم'),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(174, 237, 231, 224),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email), hintText: 'الايميل'),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 237, 231, 224),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.calendar_month),
                            hintText: 'العمر'),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 237, 231, 224),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'اسم المستخدم'),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 237, 231, 224),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'كلمة السر'),
                      ),
                    ),
                  ),
                ),

                //كلمة المرور

                SizedBox(
                  height: 5,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(174, 237, 231, 224),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.school),
                            hintText: 'الهدف من الدراسة'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.blue,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: Text(
                      "دخول",
                      style: TextStyle(color: Color.fromARGB(255, 15, 15, 15)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
