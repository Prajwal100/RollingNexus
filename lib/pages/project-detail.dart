import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;
class ProjectDetail extends StatefulWidget {
  @override
  _ProjectDetailState createState() => _ProjectDetailState();
}

class _ProjectDetailState extends State<ProjectDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        backgroundColor:Color(0xfff0f0f0),
        body:Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top:20),
                  margin: EdgeInsets.only(top:0),
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      shape:BoxShape.rectangle,
                      color:colors.secondaryColor
                  ),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back,color: Colors.white,),
                      ),
                      Text('Detail',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(

                    margin: EdgeInsets.only(top:40),
                    alignment: Alignment.center,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child:Image.asset('images/nicasia.png')
                )
              ],
            ),
//          SizedBox(height: 10,),
            Expanded(
              child: ListView(
                children: <Widget>[

                  Center(child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RatingBar(
                        initialRating: 5,
                        minRating: 1,
                        itemSize: 22,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) =>
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16,),
//          Job Detail
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:16.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(2),
                                  color: colors.secondaryColor
                              ),
                              child: Text('Skills',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        margin:EdgeInsets.fromLTRB(60, 15, 16, 0),
                        color: Colors.grey.withOpacity(.3),
                      )

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 18),
                    child: Wrap(
                      spacing:6,
                      runSpacing: 6,
                      children: <Widget>[
                        Container(
                          height:25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.grey.withOpacity(.7),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:2,horizontal: 12),
                            child: Text('Photoshop',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Container(
                          height:25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.grey.withOpacity(.7),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:2,horizontal: 12),
                            child: Text('Web Design',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Container(
                          height:25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.grey.withOpacity(.7),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:2,horizontal: 12),
                            child: Text('Flutter',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Container(
                          height:25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.grey.withOpacity(.7),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:2,horizontal: 12),
                            child: Text('JavaScript',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Container(
                          height:25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.grey.withOpacity(.7),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:2,horizontal: 12),
                            child: Text('PHP',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
//          Skills & Expertise
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:16.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(2),
                                  color: colors.secondaryColor
                              ),
                              child: Text('Description',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        margin:EdgeInsets.fromLTRB(100, 15, 16, 0),
                        color: Colors.grey.withOpacity(.3),
                      )

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
                    child: Text('Rolling Plans Private Limited, a HR consulting firm is looking for female candidates who can conduct a survey about health and sanitation through telephonic conversation with the general public of Jhapa district.Rolling Plans Private Limited, a HR consulting firm is looking for female candidates who can conduct a survey about health and sanitation through telephonic conversation with the general public of Jhapa district.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          color: colors.secondaryColor,
                          onPressed: (){},
                          child: Container(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: FaIcon(FontAwesomeIcons.hammer,color: Colors.white,size: 16,),
                                  ),
                                  Text('Bid Now',style: TextStyle(color: Colors.white,fontSize: 16),),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),


//          Description
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:16.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(2),
                                  color: colors.secondaryColor
                              ),
                              child: Text('Current Bidders',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        margin:EdgeInsets.fromLTRB(140, 15, 16, 0),
                        color: Colors.grey.withOpacity(.3),
                      )

                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 250,
                    margin: EdgeInsets.only(top: 15),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return _categoryList(context);
                      },
                    ),
                  ),

//              Button
//                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}

Widget _categoryList(BuildContext context) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
//              border: Border.all(color: Colors.grey.withOpacity(.4))
              color: Colors.grey.withOpacity(.2),
                 ),
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 300,
          height: 240,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:16.0),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('images/user.png'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              Text('Prajwal Rai',style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),
              RatingBar(
                initialRating: 5,
                minRating: 1,
                itemSize: 15,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                itemBuilder: (context, _) =>
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),

              RichText(
                text: TextSpan(
                  text: 'NRs.',
                  style: TextStyle(color: Colors.black45),
                  children: <TextSpan>[
                    TextSpan(
                      text: '20,000.00',
                      style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),
                    )
                  ]
                ),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 8),
                child: Text('Rolling Plans Private Limited, a HR consulting firm is looking for female candidates who can conduct of Jhapa district.',style: TextStyle(color: Colors.black54),),
              )

            ],
          ),
        ),
      ],
    ),
  );
}


