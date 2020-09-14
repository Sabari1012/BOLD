import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'signinscreen.dart';

class Welcomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: welcomescreen(),
      routes: <String,WidgetBuilder>{
        '/Login': (context) => Loginscreen(),
        '/Signin': (context) => Signinscreen()
      }
    );
  }
}
class welcomescreen extends StatefulWidget {
  @override
  _welcomescreenState createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Welcome to Bolt", style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 30
                ),),
                SizedBox(height: 20,),
                Text("Explore Us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,fontSize: 20
                  ),),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height /2.9,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_logo.jpg')
                  )
              ),
            ),
            SizedBox(height: 80.0,),

            Column(
              children: <Widget>[
                SizedBox(
                  height: 43,
                  width: 350,
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/Login');
                    },

                    child : Text("Login", style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20
                    ),),color: Colors.blue,
                  ),
                ),


              ],
            ),
            SizedBox(height: 10.0,),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 43,
                  width: 350,
                  child: MaterialButton(elevation: 0,
                    onPressed: (){

                      Navigator.pushNamed(context, '/Signin');
                    },

                    child : Text("Signup", style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20
                    ),),color: Colors.white,
                  ),
                ),
              ],
            ),
          ],)
    ),
      ),
    );
  }
  }
