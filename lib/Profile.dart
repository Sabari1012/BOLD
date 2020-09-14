import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() =>
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    ));
class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

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

        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: new Container(


              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 50.0),

              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(


                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Text('Profile',style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 30
                      ),),

                      SizedBox(
                        height: 30,
                      ),
                      TextField(


                        keyboardType: TextInputType.text,minLines: 1,
                        decoration: InputDecoration(
                          labelText:"Name",),),
                      SizedBox(height:10),
                      TextField(
                          keyboardType: TextInputType.text,minLines: 1,

                          decoration: InputDecoration(
                            labelText:"Address Lane",
                          )),
                      SizedBox(height:10),
                      TextField(
                          keyboardType: TextInputType.text,minLines: 1,

                          decoration: InputDecoration(
                            labelText:"City",
                          )),
                      SizedBox(height:10),
                      TextField(
                          keyboardType: TextInputType.text,minLines: 1,

                          decoration: InputDecoration(
                            labelText:"Gender",
                          )),
                      SizedBox(height:10),
                      TextField(
                          keyboardType: TextInputType.emailAddress,minLines: 1,

                          decoration: InputDecoration(
                            labelText:"Email",
                          )),
                      SizedBox(height:10),
                      TextField(
                          keyboardType: TextInputType.number,minLines: 1,

                          decoration: InputDecoration(
                            labelText:"Phone Number",
                          ))










                    ],
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}

