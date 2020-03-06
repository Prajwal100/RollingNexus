import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;
class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xfff0f0f0),
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
                        Navigator.of(context).pop(context);
                      },
                      icon: Icon(Icons.arrow_back,color: Colors.white,),
                    ),
                    Text('Job Detail',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
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

                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:12.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(FontAwesomeIcons.userShield,size: 12,color: colors.secondaryColor,),
                              ),
                              Text('Full Time',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: colors.secondaryColor),)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(FontAwesomeIcons.eye,size: 12,color: colors.secondaryColor,),
                              ),
                              Text('22',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: colors.secondaryColor),)
                            ],
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                              ),
                              Text('2020-02-26',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: colors.secondaryColor),)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                              ),
                              Text('Kathmandu, Nepal',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: colors.secondaryColor),)
                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),

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
                            child: Text('Job Detail',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Category :',
                                    style: TextStyle(color:colors.secondaryColor,fontSize: 12),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' Web Design',
                                          style: TextStyle(color: colors.secondaryColor,fontWeight:FontWeight.bold,fontSize: 12)
                                      )
                                    ]
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(FontAwesomeIcons.user,size: 12,color: colors.secondaryColor,),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Gender :',
                                    style: TextStyle(color:colors.secondaryColor,fontSize: 12),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' Male',
                                          style: TextStyle(color: colors.secondaryColor,fontWeight:FontWeight.bold,fontSize: 12)
                                      )
                                    ]
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Level :',
                                    style: TextStyle(color:colors.secondaryColor,fontSize: 12),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' Entry Level',
                                          style: TextStyle(color: colors.secondaryColor,fontWeight:FontWeight.bold,fontSize: 12)
                                      )
                                    ]
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Experience :',
                                    style: TextStyle(color:colors.secondaryColor,fontSize: 12),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' 2+ yrs',
                                          style: TextStyle(color: colors.secondaryColor,fontWeight:FontWeight.bold,fontSize: 12)
                                      )
                                    ]
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'No. of vacancy :',
                                    style: TextStyle(color:colors.secondaryColor,fontSize: 12),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' 3',
                                          style: TextStyle(color: colors.secondaryColor,fontWeight:FontWeight.bold,fontSize: 12)
                                      )
                                    ]
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Education :',
                                    style: TextStyle(color:colors.secondaryColor,fontSize: 12),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' Bachelor',
                                          style: TextStyle(color: colors.secondaryColor,fontWeight:FontWeight.bold,fontSize: 12)
                                      )
                                    ]
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Deadline :',
                                    style: TextStyle(color:colors.secondaryColor,fontSize: 12),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' 2020-04-10',
                                          style: TextStyle(color: colors.secondaryColor,fontWeight:FontWeight.bold,fontSize: 12)
                                      )
                                    ]
                                ),
                              ),
                            ],
                          ),
                        ],
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
                            child: Text('Skill & Expertise',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
                  padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 12),
                  child: Text('HOW TO APPLY    All applications must be submitted through online system. Applicant should register and signup to apply this vacancy. The system will send you an email for your email validation, please check your email for validation and follow the instruction for further process to go-ahead for applying job.    Getting started'),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('HOW TO APPLY    All applications must be submitted through online system. Applicant should register and signup to apply this vacancy. The system will send you an email for your email validation, please check your email for validation and follow the instruction for further process to go-ahead for applying job.    Getting started'),
                ),

//              Button
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(FontAwesomeIcons.userPlus,color: colors.secondaryColor,size: 18,),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.share,color: colors.secondaryColor,),
                        ),
                      ),
                      SizedBox(width: 20,),
                      FlatButton(
                        color: colors.secondaryColor,
                        onPressed: (){},
                        child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Text('Apply for this job',style: TextStyle(color: Colors.white,fontSize: 16),),
                            )),
                      ),

                    ],
                  ),
                ),
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
