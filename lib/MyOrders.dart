import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyOrders(),
    )
);
class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {

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
        ), onPressed: (){
          Navigator.pop(context);
        }
        ),
        actions: <Widget> [

          IconButton(icon: Icon(
              Icons.crop_portrait
          ), onPressed: (){}

          ),
        ],
      ),
      body:ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
                    child: Text("My Orders",style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Material(elevation: 15.0,
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,shadowColor: Colors.white,
              child: Row(
                children: [
                  Container(
                    child: SizedBox(child: Image.asset("assets/Mask4.jpg"),height: 140,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [ Text("Woman T-Shirt"),

                          SizedBox(height:5,),

                          Text("Lotta LTD"),
                          SizedBox(height: 5,),
                          Text("\$36.00"),
                          RaisedButton(onPressed: (){},child: Text("Order Again",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            splashColor: Colors.red,hoverColor: Colors.yellow,highlightColor: Colors.green,color: Colors.blue,)
                        ],
                      ),
                    ),

                  ),
                ],
              ),

            ),


          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Material(elevation: 15.0,
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,shadowColor: Colors.white,
              child: Row(
                children: [
                  Container(
                    child: SizedBox(child: Image.asset("assets/Mask5.jpg"),height: 140,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [ Text("Man T-Shirt"),

                          SizedBox(height:5,),

                          Text("Next"),
                          SizedBox(height: 5,),
                          Text("\$79.00"),
                          RaisedButton(onPressed: (){},child: Text("Order Again",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            splashColor: Colors.red,hoverColor: Colors.yellow,highlightColor: Colors.green,color: Colors.blue,)
                        ],
                      ),
                    ),

                  ),
                ],
              ),

            ),


          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Material(elevation: 15.0,
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,shadowColor: Colors.white,
              child: Row(
                children: [
                  Container(
                    child: SizedBox(child: Image.asset("assets/Mask3.jpg"),height: 140,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [ Text("Female T-Shirt"),

                          SizedBox(height:5,),

                          Text("Zuta"),
                          SizedBox(height: 5,),
                          Text("\$44.00"),
                          RaisedButton(onPressed: (){},child: Text("Order Again",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            splashColor: Colors.red,hoverColor: Colors.yellow,highlightColor: Colors.green,color: Colors.blue,)
                        ],
                      ),
                    ),

                  ),
                ],
              ),

            ),


          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Material(elevation: 15.0,
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,shadowColor: Colors.white,
              child: Row(
                children: [
                  Container(
                    child: SizedBox(child: Image.asset("assets/Mask2.jpg"),height: 140,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [ Text(" T-Shirt"),

                          SizedBox(height:5,),

                          Text("Beta"),
                          SizedBox(height: 5,),
                          Text("\$54.00"),
                          RaisedButton(onPressed: (){},child: Text("Order Again",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            splashColor: Colors.red,hoverColor: Colors.yellow,highlightColor: Colors.green,color: Colors.blue,)
                        ],
                      ),
                    ),

                  ),
                ],
              ),

            ),


          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Material(elevation: 15.0,
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,shadowColor: Colors.white,
              child: Row(
                children: [
                  Container(
                    child: SizedBox(child: Image.asset("assets/Mask1.jpg"),height: 140,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [ Text("Shirts"),

                          SizedBox(height:5,),

                          Text("Livis"),
                          SizedBox(height: 5,),
                          Text("\$60.00"),
                          RaisedButton(onPressed: (){},child: Text("Order Again",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            splashColor: Colors.red,hoverColor: Colors.yellow,highlightColor: Colors.green,color: Colors.blue,)
                        ],
                      ),
                    ),

                  ),
                ],
              ),

            ),


          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Material(elevation: 15.0,
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,shadowColor: Colors.white,
              child: Row(
                children: [
                  Container(
                    child: SizedBox(child: Image.asset("assets/Mask0.jpg"),height: 140,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [ Text("T-Shirt"),

                          SizedBox(height:5,),

                          Text("Lotta LTD"),
                          SizedBox(height: 5,),
                          Text("\$39.00"),
                          RaisedButton(onPressed: (){},child: Text("Order Again",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            splashColor: Colors.red,hoverColor: Colors.yellow,highlightColor: Colors.green,color: Colors.blue,)
                        ],
                      ),
                    ),

                  ),
                ],
              ),

            ),


          ),
        ),
      ],
      ),
    );
  }
}