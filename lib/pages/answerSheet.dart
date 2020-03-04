import 'package:rollingnexus/pages/colors.dart' as colors;
import 'package:flutter/material.dart';

class AnswerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer Sheet',style: TextStyle(color: Colors.white,fontSize: 17)),
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
                    style: TextStyle(color: Colors.grey,fontSize: 18),
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
                    style: TextStyle(color: Colors.grey,fontSize: 18),
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
          Row(
            children: <Widget>[

            ],
          )
        ],
      ),
    );
  }
}
