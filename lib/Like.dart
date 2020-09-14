import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'homescreen.dart';

void main() =>
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Like(),
    ));
class Like extends StatefulWidget {

  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      resizeToAvoidBottomPadding: false,
      body: SafeArea(

          child: new Container(



            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 50.0),

            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.end,

              children: <Widget>[
                Image.asset("assets/like.jpg"),
                Column(

                  mainAxisAlignment: MainAxisAlignment.center,

                  children:<Widget>[



                    Text(
                      "Confirmation",
                      style: TextStyle (color: Colors.black,fontSize: 38),
                    ),
                    Text("You have successfully ",style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 10
                    ),
                    ),
                    Text("completed yourpayment procedure ",style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 10),

                    ),
                    SizedBox(
                      height: 90,),
                  ],
                ),
                SizedBox(

                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(

                      child: Text("Back to Home",style: TextStyle(color:Colors.white),
                      ),color: Colors.lightBlue,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen()));
                      }
                  ),),
              ],

            ),

          )
      ),

    );
  }
}

