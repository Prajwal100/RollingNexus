import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;
import 'package:rollingnexus/pages/job-detail.dart';
import 'package:rollingnexus/pages/tender-detail.dart';

class TenderPage extends StatefulWidget {
  @override
  _TenderPageState createState() => _TenderPageState();
}

class _TenderPageState extends State<TenderPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Tender'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelColor: colors.secondaryColor,
            unselectedLabelColor: Colors.white,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                color: Color(0xfff0f0f0)),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Widget>[
              Tab(
                text: 'Fresh',
              ),
              Tab(
                text: 'Favorite',
              ),
            ],
            controller: _tabController,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.sortAlphaUpAlt,
                color: Colors.white,
                size: 16,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.filter,
                color: Colors.white,
                size: 16,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.search,
                color: Colors.white,
                size: 16,
              ),
            ),
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TenderDetailPage(),));
                          },
                          child: Text(
                            'Ministry Of Home Affairs',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: colors.secondaryColor),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                                'After 5 years of political change in Nepal, the country will look into the management of its internal affairs.  ')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' Bijulibazzar Kathmandu, Nepal',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.clock,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: ' 2020-10-19',
                                      style: TextStyle(color: Colors.grey),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: ' (27 days left)',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold))
                                      ]),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.moneyBillWaveAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 25,000,000.00',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.hammer,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 1Lr-7283-19',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.eye,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.heart,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.shareAlt,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(.2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Ministry Of Home Affairs',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: colors.secondaryColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                                'After 5 years of political change in Nepal, the country will look into the management of its internal affairs.  ')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' Bijulibazzar Kathmandu, Nepal',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.clock,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: ' 2020-10-19',
                                      style: TextStyle(color: Colors.grey),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: ' (27 days left)',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold))
                                      ]),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.moneyBillWaveAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 25,000,000.00',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.hammer,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 1Lr-7283-19',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.eye,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.heart,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.shareAlt,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(.2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Ministry Of Home Affairs',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: colors.secondaryColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                                'After 5 years of political change in Nepal, the country will look into the management of its internal affairs.  ')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' Bijulibazzar Kathmandu, Nepal',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.clock,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: ' 2020-10-19',
                                      style: TextStyle(color: Colors.grey),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: ' (27 days left)',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold))
                                      ]),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.moneyBillWaveAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 25,000,000.00',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.hammer,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 1Lr-7283-19',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.eye,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.heart,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.shareAlt,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Ministry Of Home Affairs',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: colors.secondaryColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                                'After 5 years of political change in Nepal, the country will look into the management of its internal affairs.  ')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' Bijulibazzar Kathmandu, Nepal',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.clock,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: ' 2020-10-19',
                                      style: TextStyle(color: Colors.grey),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: ' (27 days left)',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold))
                                      ]),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.moneyBillWaveAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 25,000,000.00',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.hammer,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 1Lr-7283-19',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.eye,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.heart,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.shareAlt,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(.2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Ministry Of Home Affairs',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: colors.secondaryColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                                'After 5 years of political change in Nepal, the country will look into the management of its internal affairs.  ')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' Bijulibazzar Kathmandu, Nepal',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.clock,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: ' 2020-10-19',
                                      style: TextStyle(color: Colors.grey),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: ' (27 days left)',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold))
                                      ]),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.moneyBillWaveAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 25,000,000.00',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.hammer,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 1Lr-7283-19',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.eye,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.heart,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.shareAlt,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(.2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Ministry Of Home Affairs',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: colors.secondaryColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                                'After 5 years of political change in Nepal, the country will look into the management of its internal affairs.  ')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' Bijulibazzar Kathmandu, Nepal',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.clock,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: ' 2020-10-19',
                                      style: TextStyle(color: Colors.grey),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: ' (27 days left)',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold))
                                      ]),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.moneyBillWaveAlt,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 25,000,000.00',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.secondaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.hammer,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ' 1Lr-7283-19',
                                        style: TextStyle(color: Colors.grey))
                                  ]),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.eye,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.heart,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.shareAlt,
                                      size: 14,
                                      color: colors.secondaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
