import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/quran_icon_icons.dart';
import 'dart:math' as math;
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_application_1/first_screen.dart';
import 'package:flutter_application_1/target.dart';
import 'package:flutter_application_1/bookmark.dart';

class MyHomePageNav extends StatefulWidget {
  @override
  _MyHomePageNavState createState() => _MyHomePageNavState();
}

class _MyHomePageNavState extends State<MyHomePageNav> {
  int curretIndex = 0;
  final screens = [
    MyHomePage(),
    MyHomePage(),
    Targets(),
    Bookmarks(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: screens[curretIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: curretIndex,
          onTap: (index) => setState(() => curretIndex = index),
          selectedItemColor: Color.fromRGBO(114, 78, 248, 1),
          unselectedItemColor: Color.fromRGBO(135, 137, 163, 1),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(QuranIcon.home_svgrepo_com),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(QuranIcon.book_svgrepo_com__1_),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                QuranIcon.target_svgrepo_com,
              ),
              label: 'Target',
            ),
            BottomNavigationBarItem(
              icon: Icon(QuranIcon.bookmark_svgrepo_com),
              label: 'Bookmark',
            ),
          ],
        ));
  }
}
