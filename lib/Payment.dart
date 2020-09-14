import 'package:boltappapp/Checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Payment(),
        )
    );

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black,

        ),
        iconTheme: IconThemeData(color:Colors.black),


        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pop(context);

        }),

        actions: [
          IconButton(icon: Icon(Icons.crop_portrait,), onPressed: (){}),


        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0,vertical:20.0 ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>
            [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0,vertical:10.0 ),
                child: Text("Payment",style: TextStyle(fontSize: 20),textAlign: TextAlign.start,),
              ),

              SizedBox(
                height: 25,
              ),

              Center(child: Image.asset("assets/payment.jpg")),
              SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                        child: Text("Subtotal",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                        child: Text("Discount",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                        child: Text("Shipping",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                        child: Text("Total",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ),

                    ],
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 200,right: 2,top: 10),
                        child: Text("160.00",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 200,right: 2,top: 10),
                        child: Text("5%",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 200,right: 2,top: 10),
                        child: Text("10.00",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 200,right: 2,top: 10),
                        child: Text("162.00",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Column(



                  children: <Widget> [

                    SizedBox(
                      width: 330,
                      height: 50,

                      child: FlatButton(


                          child: Text("Add Cart",style: TextStyle(color:Colors.blue,fontSize: 20),
                          ),color: Colors.white,
                          onPressed: (){}
                      ),
                    ),
                    SizedBox(height: 14,),


                    SizedBox(
                      width:330,
                      height: 50,
                      child: RaisedButton(

                          child: Text("Checkout",style: TextStyle(color:Colors.white,fontSize: 20),
                          ),color: Colors.blue,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout()));
                          }
                      ),
                    ),
                  ],
                ),
              ),

            ],

          ),
        ),


      ),







    );
  }
}
