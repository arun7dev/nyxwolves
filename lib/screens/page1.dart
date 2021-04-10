import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_wheel_scroll_view_x/list_wheel_scroll_view_x.dart';
import 'package:nyx_wolves/screens/page2.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final List<Widget> _children = [
    Stack(
      children: [
        Container(
          child: Center(
              child: Text(
            'Speacial Pass',
            style: TextStyle(fontSize: 25, color: Colors.white),
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
            style: TextStyle(fontSize: 25, color: Colors.white),
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
            style: TextStyle(fontSize: 25, color: Colors.white),
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
            style: TextStyle(fontSize: 25, color: Colors.white),
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
            style: TextStyle(fontSize: 25, color: Colors.white),
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

  double itemWidth = 200;
  int itemCount = 5;
  int selected = 2;
  FixedExtentScrollController _scrollController =
      FixedExtentScrollController(initialItem: 2);
  int _index = 2;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List rated = [
    ['Avenger Quiz', 8.9, 'assets/page1/rating/1.jpg'],
    ['WWE Quiz', 8.9, 'assets/page1/rating/2.jpg'],
    ['Ghost of Tsushima Quiz', 9.0, 'assets/page1/rating/3.jpg'],
  ];

  List differentquizes = [
    "LIVE QUIZ",
    "NORMAL QUIZ",
    "QPL",
    "QFG",
    "TOURNAMENT",
    "ANY OTHER",
  ];

  List differentcompetitions = [
    'Flutter',
    'Java',
    'React',
    'Angular',
    'kiwy',
  ];

  List Colours = [
    [Color(0xff800000), Colors.red],
    [Color(0xff015216), Colors.green],
    [Color(0xff5c0380), Colors.purpleAccent],
    [Color(0xff001075), Colors.blue],
    [Color(0xff757100), Colors.yellow],
  ];

  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue[900],
          key: scaffoldKey,
          drawer: new Drawer(
            child: Container(color: Colors.blue, child: new ListView()),
          ),
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: ListView(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 3.5,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: rated.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 5),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image:
                                                  AssetImage(rated[index][2]),
                                              fit: BoxFit.cover,
                                              colorFilter: ColorFilter.mode(
                                                  Colors.black.withOpacity(.9),
                                                  BlendMode.dstATop),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(13.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(rated[index][0],
                                                    style:
                                                        GoogleFonts.droidSans(
                                                            fontSize: 23,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                                LinearPercentIndicator(
                                                  lineHeight: 5.0,
                                                  percent: rated[index][1] / 10,
                                                  progressColor: Colors.orange,
                                                ),
                                                Text("${rated[index][1]}/10",
                                                    style:
                                                        GoogleFonts.droidSans(
                                                            fontSize: 23,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: differentquizes.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisSpacing: 0,
                                      mainAxisSpacing: 0,
                                      childAspectRatio: 2.2,
                                      crossAxisCount: 3),
                              itemBuilder: (BuildContext context, int index) {
                                return Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          child: Image.asset(
                                              'assets/gridview.png')),
                                    ),
                                    Text(
                                      differentquizes[index],
                                      style: GoogleFonts.fredokaOne(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                );
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Column(
                                children: [
                                  GridView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 6,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10,
                                            childAspectRatio: .8,
                                            crossAxisCount: 3),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              tileMode: TileMode.mirror,
                                              colors: [
                                                Colors.grey,
                                                Colors.white
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 10),
                                              child: Image.asset(
                                                'assets/page1/othergames/${++index}.png',
                                                scale: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GridView.count(
                                    childAspectRatio: .8,
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 60),
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              tileMode: TileMode.mirror,
                                              colors: [
                                                Colors.grey,
                                                Colors.white
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 10),
                                              child: Image.asset(
                                                'assets/page1/othergames/${7}.png',
                                                scale: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              tileMode: TileMode.mirror,
                                              colors: [
                                                Colors.grey,
                                                Colors.white
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 10),
                                              child: Image.asset(
                                                'assets/page1/othergames/${8}.png',
                                                scale: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ClipPath(
                                clipper: WaveClipperTwo(
                                  reverse: true,
                                ),
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 80,
                                      ),
                                      Text(
                                        'Recently Played',
                                        style: GoogleFonts.fredokaOne(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue[900]),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                        child: RotatedBox(
                                            quarterTurns: -1,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.2,
                                              width: 300,
                                              child: ListWheelScrollView(
                                                diameterRatio: 2,
                                                onSelectedItemChanged: (x) {
                                                  setState(() {
                                                    selected = x;
                                                  });
                                                },
                                                controller: _scrollController,
                                                children: List.generate(
                                                    itemCount,
                                                    (x) => RotatedBox(
                                                        quarterTurns: 1,
                                                        child:
                                                            AnimatedContainer(
                                                          duration: Duration(
                                                              milliseconds:
                                                                  400),
                                                          width: x == selected
                                                              ? 200
                                                              : 150,
                                                          height: x == selected
                                                              ? 200
                                                              : 150,
                                                          alignment:
                                                              Alignment.center,
                                                          decoration:
                                                              BoxDecoration(
                                                            image:
                                                                new DecorationImage(
                                                              image:
                                                                  ExactAssetImage(
                                                                'assets/page1/othergames/${x + 1}.png',
                                                              ),
                                                              fit: BoxFit
                                                                  .scaleDown,
                                                            ),
                                                            gradient: x ==
                                                                    selected
                                                                ? LinearGradient(
                                                                    colors: [
                                                                        Colors
                                                                            .redAccent,
                                                                        Colors
                                                                            .yellow,
                                                                      ],
                                                                    begin: Alignment
                                                                        .bottomLeft,
                                                                    end: Alignment
                                                                        .topRight,
                                                                    tileMode:
                                                                        TileMode
                                                                            .mirror)
                                                                : LinearGradient(
                                                                    colors: [
                                                                      Colors
                                                                          .grey,
                                                                      Colors.grey[
                                                                          700],
                                                                    ],
                                                                    begin: Alignment
                                                                        .bottomLeft,
                                                                    end: Alignment
                                                                        .topRight,
                                                                    stops: [
                                                                      0.0,
                                                                      1.0
                                                                    ],
                                                                    tileMode:
                                                                        TileMode
                                                                            .mirror),
                                                            border: Border.all(
                                                              width: 5,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            20)),
                                                          ),
                                                        ))),
                                                itemExtent: itemWidth,
                                              ),
                                            )),
                                      ),
                                      Text(
                                        'Trending Tournament',
                                        style: GoogleFonts.fredokaOne(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue[900]),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                          height: 200,
                                          child: Swiper(
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Container(
                                                height: 200,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  gradient: LinearGradient(
                                                      colors: Colours[index],
                                                      begin:
                                                          const FractionalOffset(
                                                              0.0, 0.0),
                                                      end:
                                                          const FractionalOffset(
                                                              1.0, 0.0),
                                                      stops: [0.0, 1.0],
                                                      tileMode: TileMode.clamp),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        differentcompetitions[
                                                            index],
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 30,
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Player in Pool:",
                                                                style: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        15,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                "231/500",
                                                                style: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        15,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Price Money",
                                                                style: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        15,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                "Rs.500",
                                                                style: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        15,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                            itemCount: 5,
                                            viewportFraction: 0.8,
                                            scale: 0.9,
                                          )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        color: Colors.grey[100],
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'LEADER BOARD',
                                              style: GoogleFonts.fredokaOne(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue[900]),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 250,
                                              child: DefaultTabController(
                                                initialIndex: 2,
                                                length: 3,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    TabBar(
                                                      tabs: [
                                                        Tab(text: "This Month"),
                                                        Tab(text: "This Week"),
                                                        Tab(text: "Today"),
                                                      ],
                                                      unselectedLabelColor:
                                                          Colors.blue[900],
                                                      labelColor: Colors.white,
                                                      indicator:
                                                          RectangularIndicator(
                                                        color: Colors.blue[900],
                                                        bottomLeftRadius: 0,
                                                        bottomRightRadius: 0,
                                                        topLeftRadius: 20,
                                                        topRightRadius: 20,
                                                        paintingStyle:
                                                            PaintingStyle.fill,
                                                      ),
                                                    ),
                                                    Container(
                                                      //Add this to give height
                                                      height: 200,
                                                      child:
                                                          TabBarView(children: [
                                                        Container(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        30),
                                                            child: Row(
                                                              children: [
                                                                buildContainerleaderboard(
                                                                    100,
                                                                    80,
                                                                    Colors.brown[
                                                                        900],
                                                                    Colors
                                                                        .brown,
                                                                    'John',
                                                                    'Doe',
                                                                    '2000',
                                                                    5),
                                                                buildContainerleaderboard(
                                                                    130,
                                                                    100,
                                                                    Colors
                                                                        .redAccent,
                                                                    Colors
                                                                        .yellow,
                                                                    'John',
                                                                    'Doe',
                                                                    '5000',
                                                                    10),
                                                                buildContainerleaderboard(
                                                                    100,
                                                                    80,
                                                                    Colors
                                                                        .black38,
                                                                    Colors
                                                                        .white,
                                                                    'John',
                                                                    'Doe',
                                                                    '2400',
                                                                    5),
                                                              ],
                                                            ),
                                                          ),
                                                          color:
                                                              Colors.blue[900],
                                                        ),
                                                        Container(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        30),
                                                            child: Row(
                                                              children: [
                                                                buildContainerleaderboard(
                                                                    100,
                                                                    80,
                                                                    Colors.brown[
                                                                        900],
                                                                    Colors
                                                                        .brown,
                                                                    'John',
                                                                    'Doe',
                                                                    '2000',
                                                                    5),
                                                                buildContainerleaderboard(
                                                                    130,
                                                                    100,
                                                                    Colors
                                                                        .redAccent,
                                                                    Colors
                                                                        .yellow,
                                                                    'John',
                                                                    'Doe',
                                                                    '5000',
                                                                    10),
                                                                buildContainerleaderboard(
                                                                    100,
                                                                    80,
                                                                    Colors
                                                                        .black38,
                                                                    Colors
                                                                        .white,
                                                                    'John',
                                                                    'Doe',
                                                                    '2400',
                                                                    5),
                                                              ],
                                                            ),
                                                          ),
                                                          color:
                                                              Colors.blue[900],
                                                        ),
                                                        Container(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        30),
                                                            child: Row(
                                                              children: [
                                                                buildContainerleaderboard(
                                                                    100,
                                                                    80,
                                                                    Colors.brown[
                                                                        900],
                                                                    Colors
                                                                        .brown,
                                                                    'John',
                                                                    'Doe',
                                                                    '2000',
                                                                    5),
                                                                buildContainerleaderboard(
                                                                    130,
                                                                    100,
                                                                    Colors
                                                                        .redAccent,
                                                                    Colors
                                                                        .yellow,
                                                                    'John',
                                                                    'Doe',
                                                                    '5000',
                                                                    10),
                                                                buildContainerleaderboard(
                                                                    100,
                                                                    80,
                                                                    Colors
                                                                        .black38,
                                                                    Colors
                                                                        .white,
                                                                    'John',
                                                                    'Doe',
                                                                    '2400',
                                                                    5),
                                                              ],
                                                            ),
                                                          ),
                                                          color:
                                                              Colors.blue[900],
                                                        ),
                                                      ]),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    buildappbar(), // Container
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
          )),
    );
  }

  Container buildappbar() {
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
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: IconButton(
                    icon: Icon(
                      Icons.menu_rounded,
                      color: Colors.blue[900],
                      size: 25,
                    ),
                    onPressed: () => scaffoldKey.currentState.openDrawer(),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 10,
              ),
            ),
            Expanded(flex: 5, child: buildcircularavatar()),
            Expanded(flex: 3, child: buildSwitch(isSwitched)),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset('assets/appbarright.png'),
                      ),
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rs',
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text(
                              '2456',
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  buildContainerleaderboard(
      double height, double width, c1, c2, n1, n2, cash, double centerheight) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                    colors: [
                      c1,
                      c2,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    tileMode: TileMode.mirror)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: centerheight,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      n1,
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      n2,
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      "Cash Won:",
                      style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rs.${cash}',
                      style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ],
            )),
      ),
    );
  }

  buildSwitch(switchvalue) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Text('Cash Mode',
              style: GoogleFonts.fredokaOne(
                  fontSize: 10,
                  color: switchvalue == false ? Colors.white : Colors.grey)),
          Transform.scale(
            scale: 3 / 4,
            child: Transform.rotate(
              angle: 3.14 / 2,
              child: CupertinoSwitch(
                trackColor: Colors.blue,
                activeColor: Colors.blue,
                value: isSwitched,
                onChanged: toggleSwitch,
              ),
            ),
          ),
          Text('Free Mode',
              style: GoogleFonts.fredokaOne(
                  fontSize: 10,
                  color: switchvalue == true ? Colors.white : Colors.grey)),
        ],
      ),
    );
  }

  Padding buildcircularavatar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            child: CircleAvatar(
              radius: 23.0,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1488371934083-edb7857977df?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
              backgroundColor: Colors.transparent,
            ),
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: new Border.all(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('John Doe',
                    style: GoogleFonts.fredokaOne(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text('★  10',
                        style: GoogleFonts.fredokaOne(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.white,
                        )),
                    // Solid text as fill.
                    Text('★  10',
                        style: GoogleFonts.fredokaOne(
                          color: Colors.blue[700],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
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
