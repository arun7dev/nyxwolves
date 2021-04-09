import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final List<Widget> _children = [
    Stack(
      children: [
        Container(
          child: Center(
              child: Text(
            'Speacial Pass',
            style: TextStyle(fontSize: 25),
          )),
        ),
        buildummyappbar('Speacial Pass'),
      ],
    ),
    Stack(
      children: [
        Container(
          child: Center(
              child: Text(
            'Leaderboard',
            style: TextStyle(fontSize: 25),
          )),
        ),
        buildummyappbar('Leaderboard'),
      ],
    ),
    Stack(
      children: [
        Container(
          child: Center(
              child: Text(
            'Features',
            style: TextStyle(fontSize: 25),
          )),
        ),
        buildummyappbar('Features'),
      ],
    ),
    Stack(
      children: [
        Container(
          child: Center(
              child: Text(
            'Features',
            style: TextStyle(fontSize: 25),
          )),
        ),
        buildummyappbar('Features'),
      ],
    ),
    Stack(
      children: [
        Container(
          child: Center(
              child: Text(
            'Game Type',
            style: TextStyle(fontSize: 25),
          )),
        ),
        buildummyappbar('Game Type'),
      ],
    ),
  ];
  int _currentIndex = 2; //navbar
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: _currentIndex == 2
                ? Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/bg.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'CONDITIONS',
                                style: GoogleFonts.fredokaOne(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'READ ALL CONDITIONS',
                                style: GoogleFonts.fredokaOne(
                                  fontSize: 11,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned(
                              child: Container(
                                height: 110,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        flex: 5,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: ClipOval(
                                                  child: Material(
                                                    color: Colors
                                                        .grey, // button color
                                                    child: InkWell(
                                                      splashColor: Colors
                                                          .red, // inkwell color
                                                      child: SizedBox(
                                                          width: 20,
                                                          height: 20,
                                                          child: Icon(
                                                            Icons
                                                                .arrow_back_ios_outlined,
                                                            color: Colors.white,
                                                            size: 10,
                                                          )),
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 7,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                      'assets/page2/appbar.png'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 5,
                                        child: Container(
                                          height: 70,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(child: SizedBox()),
                                              Expanded(
                                                child: Text(
                                                  'SPORTS',
                                                  style: GoogleFonts.fredokaOne(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              25,
                                                      color: Colors.blue[900]),
                                                ),
                                              ),
                                              Expanded(
                                                child: Image.asset(
                                                    'assets/page2/appbar.png'),
                                              ),
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                width: MediaQuery.of(context).size.width / 1.3,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset('assets/page2/top.png'),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Prize:',
                                              style: GoogleFonts.fredokaOne(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          20,
                                                  color: Colors.blue[900]),
                                            ),
                                            Text(
                                              'Rs.150',
                                              style: GoogleFonts.fredokaOne(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          15,
                                                  color: Colors.blue[900]),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Entry: ',
                                                  style: GoogleFonts.fredokaOne(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              28,
                                                      color:
                                                          Colors.yellow[700]),
                                                ),
                                                Text(
                                                  'Rs. 30',
                                                  style: GoogleFonts.fredokaOne(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              23,
                                                      color:
                                                          Colors.yellow[700]),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  28,
                                            ),
                                            Text(
                                              'Life Lines: 0',
                                              style: GoogleFonts.fredokaOne(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          28,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  )
                : _children[_currentIndex],
            bottomNavigationBar: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.red,
                      )),
                  Expanded(
                    flex: 19,
                    child: Container(
                      color: Colors.blue[900],
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: InkWell(
                                onTap: () {
                                  onTabTapped(0);
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.width / 3,
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Special Pass',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Image.asset(
                                        'assets/navbar/special.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: InkWell(
                                onTap: () {
                                  onTabTapped(1);
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.width / 3,
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Leaderboard',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Image.asset(
                                        'assets/navbar/leaderboard.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: InkWell(
                                onTap: () {
                                  onTabTapped(2);
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.width / 3,
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Home',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Image.asset(
                                        'assets/navbar/home.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: InkWell(
                                onTap: () {
                                  onTabTapped(3);
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.width / 3,
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Features',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Image.asset(
                                        'assets/navbar/feat.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: InkWell(
                                onTap: () {
                                  onTabTapped(4);
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.width / 3,
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Game Type',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Image.asset(
                                        'assets/navbar/game.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

buildummyappbar(head) {
  return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(300, 50),
          bottomRight: Radius.elliptical(150, 40),
        ), // BorderRadius
      ), // BoxDecoration
      child: Container(
        margin: const EdgeInsetsDirectional.only(
            start: 0, end: 0, top: 0, bottom: 5),
        decoration: BoxDecoration(
          color: Color(0xff06105f),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(300, 50),
            bottomRight: Radius.elliptical(150, 40),
          ), // BorderRadius
        ),
        child: Center(
            child: Text(head,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ))),
      ));
}
