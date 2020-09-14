import 'package:boltappapp/Like.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Checkout(),
    )
);
class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int _counter =0;
  int selectedRadio;
  @override
  void initState(){
    super.initState();
    selectedRadio = 0;
  }
  setSelectedRadio(int val){
    setState(() {
      selectedRadio = val;
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(icon: Icon(
            Icons.keyboard_backspace
        ), onPressed: () {
          Navigator.pop(context);
        }
        ),
        actions: <Widget>[

          IconButton(icon: Icon(
              Icons.crop_portrait
          ), onPressed: () {}

          ),
        ],
      ),
      body:ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical:0),
                    child: Text("Checout",style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            )
          ],
        ),

        Padding(

          padding: const EdgeInsets.all(8.0),
          child: Container(

              child: Material(

                  color: Colors.white,

                  elevation: 14.0,

                  borderRadius: BorderRadius.circular(15.0),

                  shadowColor: Colors.white,

                  child:Row(

                    children: [

                      Container(

                          child:Image.asset("assets/Mask3.jpg",height: 140,)

                      ),

                      SizedBox(height: 10,),



                      Padding(

                        padding: const EdgeInsets.only(bottom: 20.0),

                        child: Container(

                            child:  Row(

                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [

                                      Text("Woman T-Shirt"),

                                      SizedBox(height:5,),

                                      Text("Lotta LTD"),SizedBox(height: 5,),

                                      Text("\$36.00"),

                                      SizedBox(height: 10,),

                                      Row(

                                        children: <Widget>[

                                          InkWell(

                                            onTap:(){

                                              setState(() {

                                                _counter++;

                                                if(_counter > 20){

                                                  _counter =20;

                                                }
                                              }

                                              );

                                            },

                                            child: Icon(Icons.add,color: Colors.black,),

                                          ), SizedBox(height: 5,),

                                          Text("$_counter",style: TextStyle(fontSize: 20.0,color: Colors.grey),),

                                          SizedBox(height: 5,),

                                          InkWell(

                                            onTap:(){

                                              setState(() {

                                                _counter--;



                                                if (_counter > 2) {

                                                  _counter = 1;

                                                }

                                              });

                                            },

                                            child: Icon(Icons.remove,color: Colors.black,),

                                          ),

                                        ],

                                      )

                                    ],

                                  ),
                                ),

                                Column(mainAxisAlignment: MainAxisAlignment.end,

                                  children: [

                                    Padding(

                                      padding: const EdgeInsets.only(left: 65,bottom: 75),

                                      child: IconButton(icon: Icon(Icons.close,color: Colors.black54,),

                                          onPressed: (){

                                            Navigator.of(context).pop();

                                          }

                                      ),

                                    ),

                                  ],

                                )

                              ],

                            )

                        ),

                      ),

                    ],

                  )

              )

          ),
        ),
        Padding(

          padding: const EdgeInsets.all(8.0),

          child: Container(

              child: Material(

                  color: Colors.white,

                  elevation: 14.0,

                  borderRadius: BorderRadius.circular(15.0),

                  shadowColor: Colors.white,

                  child:Row(

                    children: [

                      Container(

                          child:Image.asset("assets/Mask2.jpg",height: 140,)

                      ),

                      SizedBox(height: 10,),



                      Padding(

                        padding: const EdgeInsets.only(bottom: 20.0),

                        child: Container(

                            child:  Row(

                              children: [

                                Column(

                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [

                                    Text("Woman T-Shirt"),

                                    SizedBox(height:5,),

                                    Text("Lotta LTD"),SizedBox(height: 5,),

                                    Text("\$36.00"),

                                    SizedBox(height: 10,),

                                    Row(

                                      children: <Widget>[

                                        InkWell(

                                          onTap:(){

                                            setState(() {

                                              _counter++;

                                              if(_counter > 20){

                                                _counter =20;

                                              }
                                            }

                                            );

                                          },

                                          child: Icon(Icons.add,color: Colors.black,),

                                        ), SizedBox(height: 5,),

                                        Text("0",style: TextStyle(fontSize: 20.0,color: Colors.grey),),

                                        SizedBox(height: 5,),

                                        InkWell(

                                          onTap:(){

                                            setState(() {

                                              _counter--;



                                              if (_counter > 2) {

                                                _counter = 1;

                                              }

                                            });

                                          },

                                          child: Icon(Icons.remove,color: Colors.black,),

                                        ),

                                      ],

                                    )

                                  ],

                                ),

                                Column(mainAxisAlignment: MainAxisAlignment.end,

                                  children: [

                                    Padding(

                                      padding: const EdgeInsets.only(left: 65,bottom: 75),

                                      child: IconButton(icon: Icon(Icons.close,color: Colors.black54,),

                                          onPressed: (){

                                            Navigator.of(context).pop();

                                          }

                                      ),

                                    ),

                                  ],

                                )

                              ],

                            )

                        ),

                      ),

                    ],

                  )

              )

          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("39,kumaran nagar,  1st street,"),
                  Text("2nd Layout"),
                  Text("pollachi-642001"),

                ],
              ),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Radio(value: 1, groupValue: selectedRadio, onChanged: (val){
                  setSelectedRadio(val);
                },activeColor: Colors.blue,
                ),
              )
            ],)
          ],
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Subtotal",style: TextStyle(color: Colors.black54),), SizedBox(height: 10,),
                  Text("Discount",style: TextStyle(color: Colors.black54),), SizedBox(height: 10,),
                  Text("Shipping",style: TextStyle(color: Colors.black54),), SizedBox(height: 10,),
                  Text("Total",style: TextStyle(fontWeight: FontWeight.bold),)
                ],

              ),SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$160.00",style: TextStyle(color: Colors.black54),), SizedBox(height: 10,),
                    Text("    %5.0",style: TextStyle(color: Colors.black54),), SizedBox(height: 10,),
                    Text("\$10.00",style: TextStyle(color: Colors.black54),), SizedBox(height: 10,),
                    Text("\162.00",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],

                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),

          child: RaisedButton(

            textColor: Colors.white,

            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Like()));

            },
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5)
                ]),
              ),
              padding: const EdgeInsets.all(10.0),width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: const Text("Buy",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
              ),
            ),),
        )








































































































































































      ],
      ),
    );
  }
}