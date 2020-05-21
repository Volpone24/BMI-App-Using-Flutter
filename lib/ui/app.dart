import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class app extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new appState();
  }
}

class appState extends State<app>{

  final TextEditingController _Controller1 = new TextEditingController();
  final TextEditingController _Controller2 = new TextEditingController();
  final TextEditingController _Controller3 = new TextEditingController();
  String _text ='';
  String _bm='';
  double _val = 0.0;
  void _calc(){

    setState(() {
       _val=int.parse(_Controller2.text.toString())/pow(double.parse(_Controller3.text.toString()), 2);
       if(_val<18.5){
         _bm = 'You are underweight.';
       }else if(_val>18.5 && _val<24.9){
         _bm = 'You are Normal Weight';
       }else if(_val>25 && _val<29.9){
         _bm = 'You are Overweight';
       }
       else{
         _bm = 'You are Obese';
       }

       _text = 'Your BMI is ${_val.toStringAsFixed(1)}\n$_bm';

    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pink,
        title: new Text('BMI', style: new TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: new Container(

        alignment: Alignment.topCenter,
        color: Colors.pinkAccent.shade100,
        child: new ListView(
          padding: const EdgeInsets.all(12.5),
          children: <Widget>[

            new Image.asset('images/bmilogo.png',
              width: 300.0,
              height: 100.0,
            ),

            new Container(
              padding: new EdgeInsets.all(9.0),
              alignment: Alignment.center,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller:_Controller1,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: 'Age',
                      icon: new Icon(Icons.person)
                    ),
                  ),
                  new TextField(
                    controller:_Controller2,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        hintText: 'Weight',
                        icon: new Icon(Icons.assessment)
                    ),
                  ),
                  new TextField(
                    controller:_Controller3,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        hintText: 'Height',
                        icon: new Icon(Icons.assignment_turned_in)
                    ),
                  ),
                   new Padding(padding: new EdgeInsets.all(7.0)),
                   RaisedButton(onPressed: _calc,
                    color: Colors.pinkAccent,

                      child: new Text('Calculate'),

                  )

                ],
              ),
            ),
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Text('$_text',
            textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 20.0, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

}




