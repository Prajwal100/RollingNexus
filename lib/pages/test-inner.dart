import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;
import 'package:rollingnexus/pages/job-detail.dart';
import 'package:rollingnexus/pages/questions.dart';
import 'package:rollingnexus/pages/tender-detail.dart';

class TestInnerPage extends StatefulWidget {
  @override
  _TestInnerPageState createState() => _TestInnerPageState();
}

class _TestInnerPageState extends State<TestInnerPage>
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
          title: Text('TestInner'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,

            labelColor:Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Widget>[
              Tab(
                text: 'New Test',
              ),
              Tab(
                text: 'Given test',
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
            Container(
              color:Color(0xfff0f0f0),
              padding:EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                  return _buildTestItem(context);
                })
            ),
            Container(
              color:Color(0xfff0f0f0),
              padding:EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                  return _buildAlreadyTestItem(context);
                })
            ),
          ],
        ));
  }
}

Widget _buildTestItem(context){
  return Container(
    padding: const EdgeInsets.fromLTRB(0,8,8.0,8),

    color:Colors.white,
    child: Row(

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16,0,10.0,0),
          child: Container(
            height: 90,
            width: 80,
            child: Image.asset('images/event.jpg',fit: BoxFit.cover,),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Java Programming',style: TextStyle(color:colors.secondaryColor,fontSize: 16,fontWeight: FontWeight.bold),),
//                                IconButton(
//                                  onPressed: (){},
//                                  icon: FaIcon(FontAwesomeIcons.star,size: 16,color: Colors.orange,),
//                                )
              ],
            ),
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FaIcon(FontAwesomeIcons.listAlt,size: 14,),
                    ),
                    Text('General Knowledge',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12),)
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FaIcon(
                    FontAwesomeIcons.chartLine,size: 14,
                  ),
                ),
                Text('Score : ___',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12),)
              ],
            ),
            Container(
              height: 30,
              padding: EdgeInsets.symmetric(vertical: 2),
              child: FlatButton(
                child: Text('Start Test',style: TextStyle(fontSize: 12),),
                color: colors.secondaryColor,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>QuestionPage()));
                },
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),
              ),
            )

          ],
        ),
      ],
    ),
  );
}
Widget _buildAlreadyTestItem(context){
  return Container(
    padding: const EdgeInsets.fromLTRB(0,8,8.0,8),

    color:Colors.white,
    child: Row(

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16,0,10.0,0),
          child: Container(
            height: 90,
            width: 80,
            child: Image.asset('images/event.jpg',fit: BoxFit.cover,),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Java Programming',style: TextStyle(color:colors.secondaryColor,fontSize: 16,fontWeight: FontWeight.bold),),
//                                IconButton(
//                                  onPressed: (){},
//                                  icon: FaIcon(FontAwesomeIcons.star,size: 16,color: Colors.orange,),
//                                )
              ],
            ),
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FaIcon(FontAwesomeIcons.listAlt,size: 14,),
                    ),
                    Text('General Knowledge',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12),)
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FaIcon(
                    FontAwesomeIcons.chartLine,size: 14,
                  ),
                ),
                Text('Score : 69',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12),)
              ],
            ),
            Container(
              height: 30,
              padding: EdgeInsets.symmetric(vertical: 2),
              child: FlatButton(
                child: Text('Start Test',style: TextStyle(fontSize: 12),),
                color: colors.secondaryColor,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>QuestionPage()));
                },
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),
              ),
            )

          ],
        ),
      ],
    ),
  );
}
