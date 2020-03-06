import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;
import 'package:rollingnexus/pages/job-detail.dart';
class JobPage extends StatefulWidget {
  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length:4,
        child: Scaffold(
            backgroundColor:Color(0xfff0f0f0),
            appBar: AppBar(
              elevation: 0,
              actions: <Widget>[
                IconButton(
                    onPressed: (){},
                    icon:FaIcon(FontAwesomeIcons.filter,color: Colors.white,size: 18,)
                ),
                IconButton(onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.white,),),
              ],
              title:Text('Jobs',style: TextStyle(fontSize: 18),),
              bottom: TabBar(
                isScrollable: true,
                labelColor: colors.secondaryColor,
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10)),
                    color: Color(0xfff0f0f0)
                ),
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  Tab(child: Text('Gold Job',style: TextStyle(fontSize: 14),)),
                  Tab(child: Text('Silver Job',style: TextStyle(fontSize: 14),)),
                  Tab(child: Text('Normal Job',style: TextStyle(fontSize: 14),)),
                  Tab(child: Text('Newspaper Job',style: TextStyle(fontSize: 14),)),

                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:6),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
//                             border:Border.all(color: Colors.grey.withOpacity(.5))
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.all(6),
                                    width:80,
                                    child: Image.asset('images/nicasia.png'),
                                  ),
//                                 Image:AssetImage('images/nicasia.png'),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                                onTap: (){
                                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DetailPage(),)
                                                  );
                                                },
                                                child: Text('Nepal Credit and Commerce Bank',overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: colors.secondaryColor,fontSize: 16),)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.list,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.graduationCap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Bachelor',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.sitemap,size: 12,color: colors.secondaryColor,),
                                                  ),

                                                  Text('Entry Level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.all(4.0),
                                                    child: FaIcon(FontAwesomeIcons.shoppingBag,size: 12,color: colors.secondaryColor,),
                                                  ),
                                                  Text('2+ years',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.users,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('Full Time',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.mapMarkerAlt,size: 12,color: colors.secondaryColor,),
                                        ),
                                        Text('Administrative',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right:4.0),
                                          child: FaIcon(FontAwesomeIcons.clock,size: 12,color: colors.secondaryColor,),
                                        ),

                                        Text('2 days left',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                      ],
                                    ),


                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            )
        )
    );

  }
}
