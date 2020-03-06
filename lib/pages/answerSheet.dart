import 'package:rollingnexus/pages/colors.dart' as colors;
import 'package:flutter/material.dart';

class AnswerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF0F1),
      appBar: AppBar(
        title: Text('Answer Sheet',style: TextStyle(color: Colors.white,fontSize: 17)),
        actions: <Widget>[
          FlatButton(
            child: Text('Rank : 2',style: TextStyle(color: Colors.white,fontSize: 16),),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text:'Total Correct :',
                    style: TextStyle(color: Colors.grey,fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '17/20',
                        style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)
                      )
                    ]
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text:'Scored :',
                    style: TextStyle(color: Colors.grey,fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '69',
                        style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)
                      )
                    ]
                  ),
                ),
              ],
            ),
          ),
          Padding(
           padding: const EdgeInsets.symmetric(horizontal:16,vertical:4.0),
           child: Container(
             padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
             decoration: BoxDecoration(
               color: Colors.white,
               shape: BoxShape.rectangle
             ),
             height: 100,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('1. Which one is correct ?',style: TextStyle(color: Colors.black.withOpacity(.7),fontSize: 18),),
                  Text('Hwllow world',style: TextStyle(color: Colors.redAccent,fontSize: 16),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:4.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Ans.',
                        style: TextStyle(color: Colors.grey,fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Hello World',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)
                          )
                        ]
                      ),
                    ),
                  )

                ],
             ),
           ),
         ),
          Padding(
           padding: const EdgeInsets.symmetric(horizontal:16,vertical:4.0),
           child: Container(
             padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
             decoration: BoxDecoration(
               color: Colors.white,
               shape: BoxShape.rectangle
             ),
             height: 80,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('1. Which one is correct ?',style: TextStyle(color: Colors.black.withOpacity(.7),fontSize: 18),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:4.0),
                    child: Text('Hello World',style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
                  ),

                ],
             ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16,vertical:4.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle
              ),
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('1. Which one is correct ?',style: TextStyle(color: Colors.black.withOpacity(.7),fontSize: 18),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:4.0),
                    child: Text('Hello World',style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16,vertical:4.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle
              ),
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('1. Which one is correct ?',style: TextStyle(color: Colors.black.withOpacity(.7),fontSize: 18),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:4.0),
                    child: Text('Hello World',style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
                  ),

                ],
              ),
            ),
          ),
          Padding(
           padding: const EdgeInsets.symmetric(horizontal:16,vertical:4.0),
           child: Container(
             padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
             decoration: BoxDecoration(
               color: Colors.white,
               shape: BoxShape.rectangle
             ),
             height: 100,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('1. Which one is correct ?',style: TextStyle(color: Colors.black.withOpacity(.7),fontSize: 18),),
                  Text('Hwllow world',style: TextStyle(color: Colors.redAccent,fontSize: 16),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:4.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Ans.',
                        style: TextStyle(color: Colors.grey,fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Hello World',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)
                          )
                        ]
                      ),
                    ),
                  )

                ],
             ),
           ),
         ),
          Padding(
           padding: const EdgeInsets.symmetric(horizontal:16,vertical:4.0),
           child: Container(
             padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
             decoration: BoxDecoration(
               color: Colors.white,
               shape: BoxShape.rectangle
             ),
             height: 100,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('1. Which one is correct ?',style: TextStyle(color: Colors.black.withOpacity(.7),fontSize: 18),),
                  Text('Hwllow world',style: TextStyle(color: Colors.redAccent,fontSize: 16),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:4.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Ans.',
                        style: TextStyle(color: Colors.grey,fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Hello World',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)
                          )
                        ]
                      ),
                    ),
                  )

                ],
             ),
           ),
         ),
        ],
      ),
    );
  }
}
