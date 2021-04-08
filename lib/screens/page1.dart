import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
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
              child: ListView(),
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
                      child: Stack(
                        children: [
                          Container(
                            child: Image.asset('assets/appbarright.png'),
                          ),
                          Row(
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
                        ],
                      ),
                    )
                  ],
                ),
              ), // Container
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
