import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingnexus/pages/answerSheet.dart';
import 'package:rollingnexus/pages/colors.dart' as colors;
import 'package:step_progress_indicator/step_progress_indicator.dart';

class AnswerValue{
  final int _key;
  final String _value;
  AnswerValue(this._key,this._value);
}
class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int _currentItemValue=1;
  final _optionAnswer=[
    AnswerValue(1,'Hellow World'),
    AnswerValue(2,'Hello World'),
    AnswerValue(3,'Hellow World'),
    AnswerValue(4,'helloo World'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfff0f0f0),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: <Widget>[
            Text('General Knowledge',style: TextStyle(color: Colors.white,fontSize: 17)),
          ],
        ),
        actions: <Widget>[
          FlatButton(
              child: Text('1/20',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 4),
                    child: Text('Easy'),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 4),
                    child: Text('Intermediate',style: TextStyle(color: Colors.white),),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 4),
                    child: Text('Hard',style: TextStyle(color: Colors.white),),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ],
            ),
            color: colors.secondaryColor,
          ),
          StepProgressIndicator(
            totalSteps: 100,
            currentStep: 32,
            size: 6,
            padding: 0,
            selectedColor: Colors.red,
            unselectedColor: Colors.white,
          ),
          Stack(
            children: <Widget>[
              Container(
                color: colors.secondaryColor,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        height:40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                        child:Center(child: Text('1',style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 20),)),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Which one is the correct answer?',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20,100,20,0),
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: ListView(
                  padding: EdgeInsets.only(top:30),
                  children:_optionAnswer.map((ansValue)=>RadioListTile(
                    groupValue:_currentItemValue,
                    value: ansValue._key,
                    onChanged: (val){
                      setState(() {
                        debugPrint('value=$val');
                        _currentItemValue=val;
                      });
                    },
                    title: Text(ansValue._value),
                  )).toList(),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0,14,16,0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  color: colors.secondaryColor,
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AnswerPage()));
                  },
                  child: Row(
                    children: <Widget>[
                      Text('Next',style: TextStyle(color: Colors.white),),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: FaIcon(FontAwesomeIcons.arrowAltCircleRight,color: Colors.white,size: 12,),
                      )
                    ],
                  ),
                ),

              )
            ],
          )
        ],
      ),
    );

  }
}

//import 'package:flutter/material.dart';
//
//class TimeValue {
//  final int _key;
//  final String _value;
//  TimeValue(this._key, this._value);
//}
//class QuestionPage extends StatefulWidget {
//  @override
//  _QuestionPageState createState() => _QuestionPageState();
//}
//
//class _QuestionPageState extends State<QuestionPage> {
//  int _currentTimeValue = 1;
//
//  final _buttonOptions = [
//    TimeValue(30,  "30 minutes"),
//    TimeValue(60,  "1 hour"),
//    TimeValue(120, "2 hours"),
//    TimeValue(240, "4 hours"),
//    TimeValue(480, "8 hours"),
//    TimeValue(720, "12 hours"),
//  ];
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Time Preferences"),
//      ),
//      body: ListView(
//        padding: EdgeInsets.all(8.0),
//        children: _buttonOptions.map((timeValue) => RadioListTile(
//          groupValue: _currentTimeValue,
//          title: Text(timeValue._value),
//          value: timeValue._key,
//          onChanged: (val) {
//            setState(() {
//              debugPrint('VAL = $val');
//              _currentTimeValue = val;
//            });
//          },
//        )).toList(),
//      ),
//    );
//  }
//}

