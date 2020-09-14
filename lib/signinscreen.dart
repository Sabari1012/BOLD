import 'package:boltappapp/loginscreen.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';

class Signinscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signinscreen(),
      routes: <String, WidgetBuilder>{
        '/home': (context) => homescreen()
      },
    );
  }
}
class signinscreen extends StatefulWidget {
  @override
  _signinscreenState createState() => _signinscreenState();
}

class _signinscreenState extends State<signinscreen> {
  @override
  bool _obscureText = true;
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
                      Text('SignUp',style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 30
                      ),),

                      SizedBox(
                        height: 40,
                      ),
                      TextField(

                        keyboardType: TextInputType.name,

                        decoration: InputDecoration(
                          labelText:"Name",),

                      ),
                      SizedBox(height:30),
                      TextField(keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText:"Email",),),
                      SizedBox(height:30),
                      TextField(
                          keyboardType: TextInputType.text,obscureText: _obscureText,

                          decoration: InputDecoration(
                              labelText:"Password",
                              suffixIcon: IconButton(icon: Icon(
                                  _obscureText ? Icons.visibility: Icons.visibility_off), onPressed:(){
                                setState(() {
                                  _obscureText =!_obscureText;

                                });

                              }))



                      ),
                      SizedBox(height: 50,),

                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: RaisedButton(
                            child: Text("Sing Up",style: TextStyle(color:Colors.white),
                            ),color: Colors.lightBlue,
                            onPressed: (){
                              Navigator.pushNamed(context, '/home');

                            }
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                        children:<Widget>[

                          Text(
                            "Don't have an account ?",
                            style: TextStyle (color: Colors.grey,decoration: TextDecoration.underline),
                          ),
                          GestureDetector(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen()));
                          },
                            child: Text("Sign In",style: TextStyle(
                                fontWeight: FontWeight.w600,fontSize: 20
                            ),),
                          ),

                        ],

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


