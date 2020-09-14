import 'package:boltappapp/homescreen.dart';
import 'package:boltappapp/signinscreen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginscreen(),
      routes: <String,WidgetBuilder>{
        '/Home' : (context) => homescreen(),
      },
    );
  }
}


class loginscreen extends StatefulWidget {
  @override

  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {

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
                    Text('Login',style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 30
                    ),),

                    SizedBox(
                      height: 40,
                    ),
                    TextField(


                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText:"Email",),minLines: 1,),
                    SizedBox(height:30),
                    TextField(
                        keyboardType: TextInputType.text,obscureText: _obscureText,
                    minLines: 1,
                        decoration: InputDecoration(
                            labelText:"Password",
                            suffixIcon: IconButton(icon: Icon(
                                _obscureText ? Icons.visibility: Icons.visibility_off), onPressed:(){
                              setState(() {
                                _obscureText =!_obscureText;

                              });

                            }),)



                    ),
                    SizedBox(height: 50,),

                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: RaisedButton(
                          child: Text("Log in",style: TextStyle(color:Colors.white),
                          ),color: Colors.lightBlue,
                          onPressed: (){

                            Navigator.pushNamed(context, '/Home');
                          }
                      ),
                    ),
                    SizedBox(height: 20,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children:<Widget>[

                        Text(
                          "Don't have an account ?",
                          style: TextStyle (color: Colors.grey,decoration: TextDecoration.underline),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Signinscreen() )
                          );
                          },
                          child: Text("Sign in",style: TextStyle(
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

