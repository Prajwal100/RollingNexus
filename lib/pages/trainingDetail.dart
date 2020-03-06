import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;

class TrainingDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Lifeguard training course',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 17),
          ),
          actions: <Widget>[
            IconButton(
            onPressed: (){},
              icon: FaIcon(
                FontAwesomeIcons.heart,
                color: Colors.white,
                size: 18,
              ),
            )
          ],
        ),
        body: ListView(
//        physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('images/training.jpg'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 0, 8),
                  child: Text(
                    'Lifeguard Training Course',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: FaIcon(
                          FontAwesomeIcons.moneyBillWaveAlt,
                          size: 16,
                          color: colors.secondaryColor,
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                              text: 'Cost :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Rs. 25,000.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic))
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: FaIcon(
                          FontAwesomeIcons.clock,
                          size: 16,
                          color: colors.secondaryColor,
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                              text: 'Time :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '10:00 AM to 05:00 PM',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic))
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          size: 16,
                          color: colors.secondaryColor,
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                              text: 'Location :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'Buddhanagar, Baneshwor, Kathmandu, Nepal',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic))
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: FaIcon(
                          FontAwesomeIcons.calendarAlt,
                          size: 16,
                          color: colors.secondaryColor,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Date :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '2020-10-10 to 2021-10-29',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic))
                            ]),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: FaIcon(
                          FontAwesomeIcons.landmark,
                          size: 16,
                          color: colors.secondaryColor,
                        ),
                      ),
                      //                      Expanded(child: Text('Training',maxLines:2,style: TextStyle(color: Colors.grey,fontSize: 14),)),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                              text: 'Organizer :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'Nilanjana Business Solutions Pvt. Ltd.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic))
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: FaIcon(
                          FontAwesomeIcons.listAlt,
                          size: 16,
                          color: colors.secondaryColor,
                        ),
                      ),
                      //                      Expanded(child: Text('Training',maxLines:2,style: TextStyle(color: Colors.grey,fontSize: 14),)),
                      RichText(
                        text: TextSpan(
                            text: 'Category :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Training',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic))
                            ]),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(2),
                                  color: colors.secondaryColor),
                              child: Text(
                                'General Detail',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        margin: EdgeInsets.fromLTRB(136, 15, 16, 0),
                        color: Colors.grey.withOpacity(.3),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 0),
                  child: Text(
                    'How would you make a FlatButton into a button with a rounded border? I have the rounded border shape using How would you make a FlatButton into a button with a rounded border? I have the rounded border shape using RoundedRectangleBorder but somehow need to color the border I have the rounded border shape using RoundedRectangleBorder but somehow need to color the border. ',
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Container(
                    height: 50,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: (BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)))),
                      color: colors.secondaryColor,
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Apply Now',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FaIcon(
                              FontAwesomeIcons.paperPlane,
                              color: Colors.white,
                              size: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
