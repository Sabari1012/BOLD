import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'welcomescreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    //TODO: implement iniState

    super.initState();
    Timer(Duration(seconds: 4),openWelcomescreen);
  }
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,

      body: Container(


        padding:EdgeInsets.all(100.0),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:  Alignment.bottomRight,
                stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9
                ],  colors: [
              Colors.blue[900],
              Colors.blue[600],
              Colors.blue[400],
              Colors.blue[300],

            ]
            )
        ),

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Image.asset("assets/icon22.png",alignment: Alignment.center
          ),
          ],
        ),




      ),



      ),
    );

  }
  void openWelcomescreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcomescreen()));
  }
}
