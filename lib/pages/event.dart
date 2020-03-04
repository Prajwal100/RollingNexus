import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;
import 'package:rollingnexus/pages/eventDetail.dart';
class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF0F2F4),
      body: SizedBox(
        height: height,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 160,
              floating: true,
              snap: true,
              pinned: true,
              actions: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.bell,color: Colors.white,size: 18,),
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Event'),
                background: Image.asset('images/event.jpg',
                fit: BoxFit.cover,),
              ),
            ),
            SliverFillRemaining(
              child:ListView.builder(
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return _buildListItem(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,

            ),
            margin: EdgeInsets.only(top: 20),
            height: 155,
            child: Container(
              margin: EdgeInsets.fromLTRB(140,10,10,10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EventDetailPage(),));
                      },
                      child: Text(
                        'OAC Film Series: In the Shadows of Everest',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: FaIcon(FontAwesomeIcons.mapMarkerAlt,color: colors.secondaryColor,size: 12,),
                      ),
                      Text('Kathmandu, Nepal',style: TextStyle(fontSize: 10),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,4,4,4),
                        child: FaIcon(FontAwesomeIcons.clock,color: colors.secondaryColor,size: 12,),
                      ),
                      Text('2020-10-10',style: TextStyle(fontSize: 10),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,4,4,4),
                        child: FaIcon(FontAwesomeIcons.listAlt,color: colors.secondaryColor,size: 12,),
                      ),
                      Text('Film',style: TextStyle(fontSize: 10),),
                    ],
                  ),
                  Text('Phortse is also home to the Khumbu to the safety of Sherpas during expeditions.',maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 10),),
                  Container(
                    padding: EdgeInsets.only(top:4),
                    height: 26,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EventDetailPage(),));

                      },
                      padding: EdgeInsets.all(0),
                      color: colors.secondaryColor,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      child: Text('View more',style: TextStyle(color: Colors.white,fontSize: 12),),
                    ),
                  )
                ],
              ),
            ),

          ),
        ),
        Container(
          margin: EdgeInsets.only(left:26),
          height: 160,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                'images/event2.jpg', fit: BoxFit.cover,)),
          width: 120,
        )
      ],
    );
  }
}
