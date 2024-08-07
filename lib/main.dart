import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
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

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  String network = "no";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(network, style: const TextStyle(fontSize: 40),),
          ),
          ElevatedButton(
            onPressed: () async {
              try{
                final result = await http.get(Uri.parse('https://www.google.com'));
                setState(() {
                  network = "Yes";
                });
              } on SocketException {
                setState(() {
                  network = "No";
                });

              }
            },
            child: const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}
