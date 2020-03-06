import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/event.dart';
import 'package:rollingnexus/pages/jobs.dart';
import 'package:rollingnexus/pages/project.dart';
import 'package:rollingnexus/pages/tender.dart';
import 'package:rollingnexus/pages/test.dart';
import 'package:rollingnexus/pages/training.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.red,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
              color: colors.secondaryColor,
              iconTheme: IconThemeData(color: Colors.white))),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome to Rolling Nexus',
            style: TextStyle(fontSize: 16),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.notifications_active,
                color: Colors.white,
              ),
            )
          ],
        ),
        drawer: Drawer(),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: height / 3.5,
                      width: width / 2,
                      child: Card(
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors.jobColor),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => JobPage(),
                                  ));
                                },
                                icon: FaIcon(FontAwesomeIcons.shoppingBag),
                                iconSize: 30,
                                color: Colors.white,
                                splashColor: colors.secondaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Jobs',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                    Container(
                      height: height / 3.5,
                      width: width / 2,
                      child: Card(
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors.tenderColor),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => TenderPage(),
                                  ));
                                },
                                icon: FaIcon(FontAwesomeIcons.hammer),
                                iconSize: 30,
                                color: Colors.white,
                                splashColor: colors.secondaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Tenders',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            )
                          ],
                        )),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: height / 3.5,
                      width: width / 2,
                      child: Card(
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors.projectColor),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>ProjectPage() ,
                                  ));
                                },
                                icon: FaIcon(FontAwesomeIcons.projectDiagram),
                                iconSize: 30,
                                color: Colors.white,
                                splashColor: colors.secondaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Projects',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                    Container(
                      height: height / 3.5,
                      width: width / 2,
                      child: Card(
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors.trainingColor),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrainingPage(),));
                                },
                                icon:
                                    FaIcon(FontAwesomeIcons.chalkboardTeacher),
                                iconSize: 30,
                                color: Colors.white,
                                splashColor: colors.secondaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Training',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            )
                          ],
                        )),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: height / 3.5,
                      width: width / 2,
                      child: Card(
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors.testColor),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TestPage(),));
                                },
                                icon: FaIcon(FontAwesomeIcons.penSquare),
                                iconSize: 30,
                                color: Colors.white,
                                splashColor: colors.secondaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Test',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                    Container(
                      height: height / 3.5,
                      width: width / 2,
                      child: Card(
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors.eventColor),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => EventPage(),));
                                },
                                icon: FaIcon(FontAwesomeIcons.calendarCheck),
                                iconSize: 30,
                                color: Colors.white,
                                splashColor: colors.secondaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Events',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            )
                          ],
                        )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
