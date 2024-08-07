import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }

}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
   return const Scaffold();
  }

}