import 'package:flutter/material.dart';
import './ui/app.dart';
void main(){
  runApp(new MaterialApp(
    title: 'BMI',
    darkTheme: ThemeData.dark(),
    home: new app()

  ));
}