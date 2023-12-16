import 'package:flutter/material.dart';
import 'package:flutter_application_8/home.dart';
import 'package:flutter_application_8/signup.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class Signpage extends StatefulWidget {
  const Signpage({Key? key}) : super(key: key);

  @override
  State<Signpage> createState() => _SignpageState();
}

class _SignpageState extends State<Signpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        //image of logo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Container(
                      width: 300,
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/signin.gif"),
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
                          prefixIcon: Icon(Icons.person),
                          hintText: 'اسم المستخدم'),
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
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'كلمة المرور'),
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
                  child: Text(
                    "دخول",
                    style: TextStyle(color: Color.fromARGB(255, 15, 15, 15)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                    height: 20,
                    child: InkWell(
                      child: Container(
                        child: Text(
                          "انشاء حساب",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        //color: Colors.blue,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()));
                      },
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
