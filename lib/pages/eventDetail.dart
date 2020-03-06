import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;

class EventDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                child: Image.asset(
                  'images/event2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Container(
//                  height: height,
                  margin: EdgeInsets.only(top: 150),
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16,10,16,10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'IEC INTERIO SCHEMA IX',
                              style: TextStyle(
                                  color: Colors.black45, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              child: IconButton(
                                  splashColor: colors.secondaryColor,
                                  onPressed: () {},
                                  icon: FaIcon(
                                    FontAwesomeIcons.shareAlt,
                                    color: colors.secondaryColor,
                                    size: 18,
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 4, 8),
                              child: FaIcon(
                                FontAwesomeIcons.clock,
                                color: colors.secondaryColor,
                                size: 14,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Time :',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' 2020-10-10',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.italic))
                                  ]),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 4, 8),
                              child: FaIcon(
                                FontAwesomeIcons.listAlt,
                                color: colors.secondaryColor,
                                size: 14,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Category :',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Exhibitions',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.italic))
                                  ]),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 4, 8),
                              child: FaIcon(
                                FontAwesomeIcons.users,
                                color: colors.secondaryColor,
                                size: 14,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Organizer :',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Rolling plans pvt. ltd.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.italic))
                                  ]),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 4, 8),
                              child: FaIcon(
                                FontAwesomeIcons.mapMarkerAlt,
                                color: colors.secondaryColor,
                                size: 14,
                              ),
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: 'Location :',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' Bijulibazzar kathmandu, Nepal',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.italic))
                                    ]),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 4, 8),
                                  child: FaIcon(
                                    FontAwesomeIcons.asterisk,
                                    color: colors.secondaryColor,
                                    size: 14,
                                  ),
                                ),
                                Text(
                                  'Details :',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(
                              'With great excitement, we would like to announce you that the College is hosting With great excitement, we would like to announce you that the College is hosting With great excitement, we would like to announce you that the College is hosting its Commencement on March 27, 2020.Congratulations! This big day is a testament of your sheer perseverance, dedication and unwavering support that you\'ve exhibited throughout your academic session at the Campus.Why Exhibit?',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(.2)),
                              child: IconButton(
                                  splashColor: colors.secondaryColor,
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.arrowCircleLeft,
                                    color: colors.secondaryColor,
                                    size: 20,
                                  )),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(.2)),
                              child: IconButton(
                                  splashColor: colors.secondaryColor,
                                  onPressed: () {},
                                  icon: FaIcon(
                                    FontAwesomeIcons.heart,
                                    color: colors.secondaryColor,
                                    size: 20,
                                  )),
                            ),
                            SizedBox(
                              width: 8,
                            ),

//                        SizedBox(width: 8,),
                            FlatButton(
                              onPressed: () {},
                              color: colors.secondaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Participate Now',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 14,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
