import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/navigator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromARGB(255, 243, 226, 250),
            Color.fromARGB(255, 236, 205, 248),
            Color.fromARGB(255, 228, 184, 245),
            Color.fromARGB(255, 231, 208, 244),
            Color.fromARGB(255, 249, 233, 255),
            Color.fromARGB(255, 250, 243, 252),
            Color.fromRGBO(255, 255, 255, 1),
          ])),
      child: Scaffold(
        // By defaut, Scaffold background is white
        // Set its value to transparent
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 244, 200, 249).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Simple Quran App For Muslim",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Text(
                          "Quran Evo adalah Aplikasi quran modern Yang dapat dipakai kapanpun dan dimanapun",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 280,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(219, 5, 235, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return MyHomePageNav();
                    })));
                  },
                  child: Text(
                    "Get started now",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
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
