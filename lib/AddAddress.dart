
import 'package:boltappapp/Payment.dart';
import 'package:flutter/material.dart';


class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.keyboard_backspace),
            color: Colors.grey, onPressed: (){
              Navigator.pop(context);

            }),


      ),
      resizeToAvoidBottomPadding: false,
      body: SafeArea(

        child: new Container(


            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 50.0),

            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(


              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Text('Create Address',style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 30
                    ),),

                    SizedBox(
                      height: 20,
                    ),
                    TextField(

                      keyboardType: TextInputType.name,minLines: 1,

                      decoration: InputDecoration(
                        labelText:"Name",),

                    ),
                    SizedBox(height:8),
                    TextField(keyboardType: TextInputType.text,minLines: 1,
                      decoration: InputDecoration(
                        labelText:"Addres Lane",),),
                    SizedBox(height:8),
                    TextField(
                        keyboardType: TextInputType.text,minLines: 1,

                        decoration: InputDecoration(
                            labelText:"City",
                            )),
                    SizedBox(height:8),
                    TextField(keyboardType: TextInputType.number,minLines: 1,
                      decoration: InputDecoration(
                        labelText:"PosterCode",),),
                    SizedBox(height:8),
                    TextField(keyboardType: TextInputType.number,minLines: 1,
                      decoration: InputDecoration(
                        labelText:"Phone Number",),),




                    SizedBox(height: 50,),

                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: RaisedButton(
                          child: Text("Add Address",style: TextStyle(color:Colors.white),
                          ),color: Colors.lightBlue,
                          onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));
                          }
                      ),
                    ),
                  ],
                ),
              ],
            )


        ),
      ),
    );
  }

}


