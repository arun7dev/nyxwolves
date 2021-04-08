import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_wheel_scroll_view_x/list_wheel_scroll_view_x.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 2;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List rated = [
    [
      'Avenger Quiz',
      8.9,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rOnvICYRBAGbjTQINsdQ3zQqIiNwGx9XKg&usqp=CAU'
    ],
    [
      'WWE Quiz',
      8.9,
      'https://i.pinimg.com/originals/9d/62/b4/9d62b4870b0137bc0f2da2f0888eae35.jpg'
    ],
    [
      'Ghost of Tsushima Quiz',
      9.0,
      'https://d1lss44hh2trtw.cloudfront.net/assets/article/2020/07/16/ghost-of-tsushima-how-to-unlock-new-weapons_feature.jpg'
    ],
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
        key: scaffoldKey,
        drawer: new Drawer(
          child: Container(color: Colors.blue, child: new ListView()),
        ),
        body: Stack(
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
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: rated.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      image: NetworkImage(rated[index][2]),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(.9),
                                          BlendMode.dstATop),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(rated[index][0],
                                            style: GoogleFonts.droidSans(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        LinearPercentIndicator(
                                          lineHeight: 5.0,
                                          percent: rated[index][1] / 10,
                                          progressColor: Colors.orange,
                                        ),
                                        Text("${rated[index][1]}/10",
                                            style: GoogleFonts.droidSans(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
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
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          childAspectRatio: 2.2,
                          crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Image.asset('assets/gridview.png')),
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
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 8,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: .8,
                            crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  tileMode: TileMode.mirror,
                                  colors: [Colors.grey, Colors.white]),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Image.asset(
                                    'assets/othergames/${++index}.png',
                                    scale: 20,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
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
                                'Trending Tournament',
                                style: GoogleFonts.fredokaOne(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[900]),
                              ),
                              SizedBox(
                                  height: 200,
                                  child: Swiper(
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        height: 200,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          gradient: LinearGradient(
                                              colors: Colours[index],
                                              begin: const FractionalOffset(
                                                  0.0, 0.0),
                                              end: const FractionalOffset(
                                                  1.0, 0.0),
                                              stops: [0.0, 1.0],
                                              tileMode: TileMode.clamp),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                differentcompetitions[index],
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 30,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      ),
                                                      Text(
                                                        "231/500",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 15,
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
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      ),
                                                      Text(
                                                        "Rs.500",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 15,
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
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Container(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          child: IconButton(
                            icon: Icon(
                              Icons.menu_rounded,
                              color: Colors.blue[900],
                              size: 25,
                            ),
                            onPressed: () =>
                                scaffoldKey.currentState.openDrawer(),
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
            ), // Container
          ],
        ),
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
