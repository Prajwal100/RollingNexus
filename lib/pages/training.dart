import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;
import 'package:rollingnexus/pages/trainingDetail.dart';

class TrainingPage extends StatefulWidget {
  @override
  _TrainingPageState createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEFF0F1),
        appBar: AppBar(
          elevation: 0,
          title: Text('Training'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            labelColor:Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Widget>[
              Tab(
                text: 'Popular',
              ),
              Tab(
                text: 'New',
              ),
              Tab(
                text: 'Free',
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
                  physics: BouncingScrollPhysics(),
                    itemCount: 10,itemBuilder: (context,index){
                  return _buildTestItem(context);
                })
            ),
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
                      return _buildTestItem(context);
                    })
            ),
          ],
        ));
  }
}

Widget _buildTestItem(context){
  return Container(
    padding: const EdgeInsets.fromLTRB(0,8,8.0,8),
//    height: 300,
    color:Color(0xFFEFF0F1),
    child: Column(
      children: <Widget>[
        Image.asset('images/training.jpg',),
       Container(
         color: Colors.white,
         child: Column(
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Expanded(child: InkWell(
                       onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrainingDetail(),));
                       },
                       child: Text('Lifeguard Training Course',textAlign: TextAlign.left,maxLines:2,overflow: TextOverflow.ellipsis,style: TextStyle(color:colors.secondaryColor,fontSize: 14,fontWeight: FontWeight.bold),)))
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal:8.0),
               child: Row(
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(right:4.0),
                         child: FaIcon(FontAwesomeIcons.clock,size: 14,color:colors.secondaryColor,),
                       ),
                       Text('10:00 AM - 04:00 PM',style: TextStyle(fontSize: 12),)
                     ],
                   ),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 2),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(right:4.0),
                     child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 14,color:colors.secondaryColor,),
                   ),
                   Expanded(child: Text('Bijulibazzar Kathmandu, Nepal',maxLines:2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12),))
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 2),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(right:4.0),
                     child: FaIcon(FontAwesomeIcons.calendarAlt,size: 14,color:colors.secondaryColor,),
                   ),
                   Expanded(child: Text('2020-10-10 to 2021-10-10',maxLines:2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12),))
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 2),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(right:4.0),
                     child: FaIcon(FontAwesomeIcons.moneyBillWaveAlt,size: 14,color:colors.secondaryColor,),
                   ),
                   Expanded(child: Text('Rs. 25,000.99',maxLines:2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12),))
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 8),
               child:Text('पहिलो पटक नेपाल मा Lifeguard( rescue) ट्रेनिंग हुदै छ आगामी चैत्र १६ गते देखि चैत्र १९ गते सम्पर्क : Emai : md.drs@drsportsuae.com WhatsApp: ००९७१...',maxLines:5,overflow:TextOverflow.ellipsis,style: TextStyle(fontSize: 12),)
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(8.0,0,8,12),
               child: Row(
                 children: <Widget>[
                   Container(
                     height: 30,
                     child: FlatButton(
                       onPressed: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrainingDetail(),));
                       },
                       textColor: Colors.white,
                       color: colors.secondaryColor,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                       child: Text('Readmore'),
                     ),
                   )
                 ],
               ),
             ),
           ],
         ),
       )
      ],
    ),
  );
}
