import 'package:fancy_dialog/fancy_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;
class TenderDetailPage extends StatefulWidget {
  @override
  _TenderDetailPageState createState() => _TenderDetailPageState();
}

class _TenderDetailPageState extends State<TenderDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xfff0f0f0),
        appBar: AppBar(
        backgroundColor:colors.secondaryColor ,
        title: Text('Tender Detail'),
      ),
      body:ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 100,
                  child: InkWell(
                    onTap: (){
                      _showAlertDialogue(context);
                    },
                    child: Image.asset('images/paper.jpg'),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(6),
                        border:Border.all(color: Colors.grey)
                      ),
                      child: IconButton(
                        onPressed: (){
                         _showAlertDialogue(context);
                        },
                        icon: FaIcon(FontAwesomeIcons.eye,color: colors.secondaryColor,),
                      ),
                    ),
                    SizedBox(width: 6,),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(6),
                        border:Border.all(color: Colors.grey)
                      ),
                      child: IconButton(
                        onPressed: (){
                         _showAlertDialogue(context);
                        },
                        icon: FaIcon(FontAwesomeIcons.heart,color: colors.secondaryColor,),
                      ),
                    ),
                    SizedBox(width: 6,),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(6),
                        border:Border.all(color: Colors.grey)
                      ),
                      child: IconButton(
                        onPressed: (){
                         _showAlertDialogue(context);
                        },
                        icon: FaIcon(FontAwesomeIcons.shareAlt,color: colors.secondaryColor,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
                      child: Text('General Detail',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              Container(
                height: 1,
                margin:EdgeInsets.fromLTRB(136, 15, 16, 0),
                color: Colors.grey.withOpacity(.3),
              )

            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               RichText(
                 text:TextSpan(
                   text: 'RT ID :',
                   style: TextStyle(color: colors.secondaryColor),
                   children: <TextSpan>[
                     TextSpan(
                       text: ' RBW-8024-20',
                       style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                     )
                   ]
                 )
               ),
               RichText(
                 text:TextSpan(
                   text: 'Category :',
                   style: TextStyle(color: colors.secondaryColor),
                   children: <TextSpan>[
                     TextSpan(
                       text: ' RBW-8024-20',
                       style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                     )
                   ]
                 )
               ),
              ],
            ),
          ),
//          title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: RichText(
                text:TextSpan(
                    text: 'Title :',
                    style: TextStyle(color: colors.secondaryColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Road Blacktopping Work',
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                      )
                    ]
                )
            ),
          ),
//          Location
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: RichText(
                text:TextSpan(
                    text: 'Location :',
                    style: TextStyle(color: colors.secondaryColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Bijulibazzar kathmandu, Nepal',
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                      )
                    ]
                )
            ),
          ),
//        Document fees
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: RichText(
                text:TextSpan(
                    text: 'Document Fees :',
                    style: TextStyle(color: colors.secondaryColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Rs. 2500.00',
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                      )
                    ]
                )
            ),
          ),
//        estimate costs
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: RichText(
                text:TextSpan(
                    text: 'Estimate Cost :',
                    style: TextStyle(color: colors.secondaryColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Rs. 55,000.00',
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                      )
                    ]
                )
            ),
          ),
//        Bid submission
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: RichText(
                text:TextSpan(
                    text: 'Bid Submission :',
                    style: TextStyle(color: colors.secondaryColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' 2020-02-27 to 2020-03-29',
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                      )
                    ]
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                    text:TextSpan(
                        text: 'Pre-Bid Meeting :',
                        style: TextStyle(color: colors.secondaryColor),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Don\'t Allow',
                              style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                          )
                        ]
                    )
                ),
                RichText(
                    text:TextSpan(
                        text: 'Event For :',
                        style: TextStyle(color: colors.secondaryColor),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Buy',
                              style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                          )
                        ]
                    )
                ),
              ],
            ),
          ),
//        Delivery
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: RichText(
                text:TextSpan(
                    text: 'Delivery or Completion Period :',
                    style: TextStyle(color: colors.secondaryColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' 2 days',
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                      )
                    ]
                )
            ),
          ),
//        Detail
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Detail :',style: TextStyle(color: colors.secondaryColor),),
                Text('This municipality is formed merging two village development committees i.e. Ghailadubba and Surunga in May 2014.This municipality is one of the developed and biggest municipalities in Jhapa.')
              ],
            )
          ),
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
                      child: Text('Bid Submission',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              Container(
                height: 1,
                margin:EdgeInsets.fromLTRB(136, 15, 16, 0),
                color: Colors.grey.withOpacity(.3),
              )

            ],
          ),
//          Bidding access
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: RichText(
                text:TextSpan(
                    text: 'Bidding Access :',
                    style: TextStyle(color: colors.secondaryColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Open',
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                      )
                    ]
                )
            ),
          ),
//          Bidding access
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: RichText(
                text:TextSpan(
                    text: 'Published Date :',
                    style: TextStyle(color: colors.secondaryColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' 2020-10-19',
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                      )
                    ]
                )
            ),
          ),

//          End Date
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: RichText(
                text:TextSpan(
                    text: 'End Date :',
                    style: TextStyle(color: colors.secondaryColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' 2020-12-10',
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)
                      )
                    ]
                )
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:28.0),
            child: FlatButton(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              onPressed: (){},

              color: colors.secondaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.download,color: Colors.white,size: 14,),
                  SizedBox(width: 6,),
                  Text('Download CV',style: TextStyle(color: Colors.white,fontSize: 16),),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,)
        ],
      )
  );
  }
}

void _showAlertDialogue(context){
  showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context)
          .modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (BuildContext buildContext,
          Animation animation,
          Animation secondaryAnimation) {
        return Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50,
            height: MediaQuery.of(context).size.height -  230,
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Center(
             child:  Image.asset(
               'images/paper.jpg',fit: BoxFit.cover,
             ),
            ),
          ),
        );
      });
}


