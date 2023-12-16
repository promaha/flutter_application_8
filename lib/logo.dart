import 'package:flutter/material.dart';
import 'package:flutter_application_8/signin.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';

class Logopage extends StatefulWidget {
  const Logopage({Key? key}) : super(key: key);

  @override
  State<Logopage> createState() => _LogopageState();
}

class _LogopageState extends State<Logopage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      //كود الانتقال لصفحة ثانية ب 5 ثواني
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => const Signpage())));
    });

    return Scaffold(
      backgroundColor: const Color(0xffededed),

      // اضافة الصورة
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 80.0, top: 1),
                child: Image.asset(
                  "assets/1.gif",
                  height: 300,
                ),
              ),

              // اضافة النص تحت الصورة
              const SizedBox(
                height: 4,
              ),

              const Text(
                "إشارة تطبيقك الأمثل لتعلم لغة الإشارة",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontFamily: 'ElMessiri'),
              ),

              //الكود حق ايقونة التحميل
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Container(
                  child: LoadingAnimationWidget.inkDrop(
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
