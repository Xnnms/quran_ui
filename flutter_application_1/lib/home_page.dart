import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/quran_icon_icons.dart';
import 'package:flutter_application_1/first_screen.dart';
import 'package:flutter_application_1/target.dart';
import 'package:flutter_application_1/bookmark.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int curretIndex = 0;
  // final screens = [
  //   HomePage(),
  //   MyHomePage(),
  //   Targets(),
  //   Bookmarks(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(20),
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(223, 152, 250, 1),
                              Color.fromRGBO(144, 85, 255, 1),
                            ]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.book,
                                        color: Colors.white, size: 15),
                                    Text(
                                      " Terakhir Dibaca",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins'),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 18),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  "Al-Fatihah",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins'),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 42),
                                child: Text(
                                  "Ayat No: 1",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: 'Poppins'),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Center(
                              child: Image.asset(
                                'assets/logo1.png',
                                width: 100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  DefaultTabController(
                      length: 3, // length of tabs
                      initialIndex: 0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              child: TabBar(
                                indicatorColor: Color.fromRGBO(114, 78, 248, 1),
                                labelColor: Color.fromRGBO(114, 78, 248, 1),
                                unselectedLabelColor:
                                    Color.fromRGBO(114, 78, 248, 1),
                                tabs: [
                                  Tab(
                                    text: "Surah",
                                  ),
                                  Tab(text: 'Juz'),
                                  Tab(text: 'Target'),
                                ],
                              ),
                            ),
                            Container(
                                height: 432, //height of TabBarView
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Colors.grey, width: 0.5))),
                                child: TabBarView(children: <Widget>[
                                  Container(
                                    child: ListView(
                                      children: <Widget>[
                                        Card(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                    'assets/Vector.png'),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                        'Al-Fatihah',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'MEKKAH 7 AYAT',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "الفاتحة",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromRGBO(
                                                        114, 78, 248, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        //no2
                                        Card(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                    'assets/Vector1.png'),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                        'Al-Baqarah',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'MADINAH 286 AYAT',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "البقرة",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromRGBO(
                                                        114, 78, 248, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ), //no3
                                        Card(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                    'assets/Vector2.png'),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                        'Ali ‘Imran',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'MADINAH 200 AYAT',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "اٰل عمران",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromRGBO(
                                                        114, 78, 248, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ), //no4
                                        Card(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                    'assets/Vector3.png'),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                        'An-Nisa’',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'MADINAH 176 AYAT',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "النساۤء",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromRGBO(
                                                        114, 78, 248, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ), //no5
                                        Card(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                    'assets/Vector4.png'),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                        'Al-Ma’idah',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'MADINAH 120 AYAT',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "الماۤئدة",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromRGBO(
                                                        114, 78, 248, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ), //no6
                                        Card(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                    'assets/Vector5.png'),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                        'Al-An’am',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'MEKKAH 165 AYAT',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "الأنعام",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromRGBO(
                                                        114, 78, 248, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ), //no7
                                        Card(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                    'assets/Vector6.png'),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                        'Al-A’raf',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'MADINAH 206 AYAT',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "الأعراف",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromRGBO(
                                                        114, 78, 248, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ), //no8
                                        Card(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                    'assets/Vector7.png'),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                        'Al-Anfal',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'MADINAH 75 AYAT',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "الأنفال",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromRGBO(
                                                        114, 78, 248, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ), //no9
                                        Card(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                    'assets/Vector8.png'),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                        'At-Taubah',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'MEKKAH 129 AYAT',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "التوبة",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromRGBO(
                                                        114, 78, 248, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ), //no10
                                        Card(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                    'assets/Vector9.png'),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                        'Yunus',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'MEKKAH 109 AYAT',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "يونس",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromRGBO(
                                                        114, 78, 248, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text('Display Tab 2',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text('Display Tab 3',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]))
                          ])),
                ]),
          ),
        ));
    // bottomNavigationBar: BottomNavigationBar(
    //   currentIndex: curretIndex,
    //   onTap: (index) => setState(() => curretIndex = index),
    //   selectedItemColor: Color.fromRGBO(114, 78, 248, 1),
    //   unselectedItemColor: Color.fromRGBO(135, 137, 163, 1),
    //   showSelectedLabels: false,
    //   showUnselectedLabels: false,
    //   type: BottomNavigationBarType.fixed,
    //   items: const <BottomNavigationBarItem>[
    //     BottomNavigationBarItem(
    //       icon: Icon(QuranIcon.home_svgrepo_com),
    //       label: 'Home',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(QuranIcon.book_svgrepo_com__1_),
    //       label: 'Quran',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         QuranIcon.target_svgrepo_com,
    //       ),
    //       label: 'Target',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(QuranIcon.bookmark_svgrepo_com),
    //       label: 'Bookmark',
    //     ),
    //   ],
    // ));
  }
}
