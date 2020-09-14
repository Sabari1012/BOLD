import 'package:boltappapp/Favorite.dart';
import 'package:boltappapp/MyOrders.dart';
import 'package:boltappapp/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'AddCart.dart';
import 'homescreen.dart';

void main() =>
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Menu(),
    ));
class Menu extends StatefulWidget {

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      resizeToAvoidBottomPadding: false,
      body: SafeArea(

          child: new Container(



            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 150.0),

            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(

              children: <Widget>[
                Column(

                  crossAxisAlignment: CrossAxisAlignment.center,

                  children:<Widget>[
                    SizedBox(
                      height: 50 ,),

                    GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen() ));
                    },
                      child: InkWell(
                        child: Text(
                          "Home",
                          style: TextStyle (color: Colors.black54,fontSize: 20,),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,),

                    GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                    },
                      child: InkWell(
                        child: Text("Profile",style: TextStyle(
                            color: Colors.black54,fontSize: 20
                        ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,),

                    GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddCart()));
                    },
                      child: InkWell(
                        child: Text("My Cart",style: TextStyle(
                            color: Colors.black54,fontSize: 20),

                        ),
                      ),
                    ),SizedBox(
                      height: 10,),

                    GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Favorite()));
                    },
                      child: InkWell(
                        child: Text(
                          "Favourite",
                          style: TextStyle (color: Colors.black54,fontSize: 20),
                        ),
                      ),
                    ),SizedBox(
                      height: 10,),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrders()));
                      },
                      child: InkWell(
                        child: Text("My order",style: TextStyle(
                            color: Colors.black54,fontSize: 20
                        ),
                        ),
                      ),
                    ),SizedBox(
                      height: 10,),

                    GestureDetector(
                      child: InkWell(
                        child: Text("Language",style: TextStyle(
                            color: Colors.black54,fontSize: 20),),
                      ),
                    ),
                    SizedBox(
                      height: 10,),
                    GestureDetector(
                      child: InkWell(
                        child: Text("Settings",style: TextStyle(
                            color: Colors.black54,fontSize: 20),),
                      ),
                    ),
                  ],
                ),


              ],


            ),


          )
      ),

    );
  }
}

