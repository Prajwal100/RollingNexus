import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;

class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

List<CustomPopupMenu> choices = <CustomPopupMenu>[
  CustomPopupMenu(title: 'Like', icon: FontAwesomeIcons.thumbsUp),
  CustomPopupMenu(title: 'Dislike', icon: FontAwesomeIcons.thumbsDown),
  CustomPopupMenu(title: 'Share', icon: FontAwesomeIcons.share),
];

class _ProjectPageState extends State<ProjectPage> {
  CustomPopupMenu _selectedChoices = choices[1];

  void _select(CustomPopupMenu choice) {
    setState(() {
      _selectedChoices = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 44,
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4),

                ),
                borderSide:BorderSide.none
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              filled: true,
              hintText: 'Search....',
              suffixIcon: IconButton(icon: Icon(Icons.mic,color: Colors.grey,),onPressed: (){},tooltip: 'Search by your voice',),
              fillColor: Colors.white,
              hintStyle: new TextStyle(
                color: Colors.grey[800],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
            child: RichText(
              text: TextSpan(
                  text: 'Total Projects :',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' 35',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18))
                  ]),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 13.0,
                    color: Colors.black.withOpacity(.1),
                    offset: Offset(6.0, 7.0),
                  ),
                ],
                shape: BoxShape.rectangle,
                color: Colors.white),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Web Development',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: colors.secondaryColor),
                      ),
                    ),
                    PopupMenuButton<CustomPopupMenu>(
                      elevation: 3.2,
                      initialValue: choices[1],
                      onCanceled: () {
                        print('You have not chossed anything');
                      },
                      tooltip: 'This is tooltip',
                      onSelected: _select,
                      itemBuilder: (BuildContext context) {
                        return choices.map((CustomPopupMenu choice) {
                          return PopupMenuItem<CustomPopupMenu>(
                              value: choice,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      choice.icon,
                                      color: colors.secondaryColor,
                                      size: 14,
                                    ),
                                  ),
                                  Text(
                                    choice.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.grey),
                                  ),
                                ],
                              ));
                        }).toList();
                      },
                    )
//                    PopUpMenu(),
//                    IconButton(
//                      onPressed: (){},
//                      icon:Icon(Icons.more_vert),
//                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                          'The world’s leading conservation organization, WWF works in 100 countries and is supported by more than one million members in the United States and close..')
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
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.clock,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Text('Open : 2019-10-19')
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.hourglassHalf,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Text('11 bids')
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
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.tags,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Wrap(
                            spacing: 3,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.grey.withOpacity(.7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 8),
                                  child: Text(
                                    'Photoshop',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.grey.withOpacity(.7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 8),
                                  child: Text(
                                    'Java',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.moneyBillWave,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Text('Price (NRs): 2500')
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 13.0,
                    color: Colors.black.withOpacity(.1),
                    offset: Offset(6.0, 7.0),
                  ),
                ],
                shape: BoxShape.rectangle,
                color: Colors.white),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Web Development',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: colors.secondaryColor),
                      ),
                    ),
                    PopupMenuButton<CustomPopupMenu>(
                      elevation: 3.2,
                      initialValue: choices[1],
                      onCanceled: () {
                        print('You have not chossed anything');
                      },
                      tooltip: 'This is tooltip',
                      onSelected: _select,
                      itemBuilder: (BuildContext context) {
                        return choices.map((CustomPopupMenu choice) {
                          return PopupMenuItem<CustomPopupMenu>(
                              value: choice,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      choice.icon,
                                      color: colors.secondaryColor,
                                      size: 14,
                                    ),
                                  ),
                                  Text(
                                    choice.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.grey),
                                  ),
                                ],
                              ));
                        }).toList();
                      },
                    )
//                    PopUpMenu(),
//                    IconButton(
//                      onPressed: (){},
//                      icon:Icon(Icons.more_vert),
//                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                          'The world’s leading conservation organization, WWF works in 100 countries and is supported by more than one million members in the United States and close..')
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
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.clock,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Text('Open : 2019-10-19')
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.hourglassHalf,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Text('11 bids')
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
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.tags,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Wrap(
                            spacing: 3,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.grey.withOpacity(.7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 8),
                                  child: Text(
                                    'Photoshop',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.grey.withOpacity(.7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 8),
                                  child: Text(
                                    'Java',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.moneyBillWave,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Text('Price (NRs): 2500')
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 13.0,
                    color: Colors.black.withOpacity(.1),
                    offset: Offset(6.0, 7.0),
                  ),
                ],
                shape: BoxShape.rectangle,
                color: Colors.white),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Web Development',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: colors.secondaryColor),
                      ),
                    ),
                    PopupMenuButton<CustomPopupMenu>(
                      elevation: 3.2,
                      initialValue: choices[1],
                      onCanceled: () {
                        print('You have not chossed anything');
                      },
                      tooltip: 'This is tooltip',
                      onSelected: _select,
                      itemBuilder: (BuildContext context) {
                        return choices.map((CustomPopupMenu choice) {
                          return PopupMenuItem<CustomPopupMenu>(
                              value: choice,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      choice.icon,
                                      color: colors.secondaryColor,
                                      size: 14,
                                    ),
                                  ),
                                  Text(
                                    choice.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.grey),
                                  ),
                                ],
                              ));
                        }).toList();
                      },
                    )
//                    PopUpMenu(),
//                    IconButton(
//                      onPressed: (){},
//                      icon:Icon(Icons.more_vert),
//                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                          'The world’s leading conservation organization, WWF works in 100 countries and is supported by more than one million members in the United States and close..')
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
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.clock,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Text('Open : 2019-10-19')
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.hourglassHalf,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Text('11 bids')
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
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.tags,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Wrap(
                            spacing: 3,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.grey.withOpacity(.7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 8),
                                  child: Text(
                                    'Photoshop',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.grey.withOpacity(.7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 8),
                                  child: Text(
                                    'Java',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: FaIcon(
                              FontAwesomeIcons.moneyBillWave,
                              size: 16,
                              color: colors.secondaryColor,
                            ),
                          ),
                          Text('Price (NRs): 2500')
                        ],
                      ),
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
    );
  }
}

class CustomPopupMenu {
  CustomPopupMenu({this.title, this.icon});

  String title;
  IconData icon;
}

class SelectedOption extends StatelessWidget {
  CustomPopupMenu choice;

  SelectedOption({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 140.0, color: colors.secondaryColor),
            Text(
              choice.title,
              style: TextStyle(color: Colors.white, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
