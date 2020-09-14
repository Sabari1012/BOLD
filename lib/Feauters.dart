import 'package:boltappapp/iteam.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Feauters(

      ),
    ));
class Feauters extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(icon: Icon(Icons.keyboard_backspace),
            color: Colors.grey,
            onPressed: (){
            Navigator.pop(context);
            },

          ),
          actions: [IconButton(icon: Icon(Icons.crop_portrait,),
            color: Colors.grey,
            onPressed: (){},
          ),],

        ),
        body: SafeArea(
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: new Container(
                child: SingleChildScrollView(scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 30),
                        child: Text("Featured",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 30),textAlign: TextAlign.start,),
                      ),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,),
                        child: Row(

                          children: [
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: <Widget>[

                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    children: [
                                      GestureDetector(onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => IteamAdd()));
    },
                                      child: Image.asset("assets/Mask1.jpg",height:140,)),

                                      SizedBox(
                                          height: 1),
                                      Text("\$34.00"),
                                      SizedBox(
                                          height: 1),
                                      Text("Woman T-Shirt",style: TextStyle(fontSize: 15),),],),
                                ),
                                SizedBox(
                                    height: 10),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: GestureDetector(onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => IteamAdd()));
                                      },child: Image.asset("assets/Mask0.jpg",height:140,)),
                                    ),

                                    SizedBox(
                                        height: 1),
                                    Text("34.00"),
                                    SizedBox(
                                        height: 1),
                                    Text("Woman T-Shirt",style: TextStyle(fontSize: 15),),

                                  ],),
                                SizedBox(
                                    height: 10),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:20),
                                      child: GestureDetector(onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => IteamAdd()));
                                      },child: Image.asset("assets/Mask2.jpg",height:140,)),
                                    ),

                                    SizedBox(
                                        height: 1),
                                    Text("34.00"),
                                    SizedBox(
                                        height: 1),
                                    Text("T-Shirt",style: TextStyle(fontSize: 15),),],),




                              ],        ),

                            SizedBox(
                              height: 20,
                            ),


                            Padding(
                              padding: const EdgeInsets.only(bottom: 5,left: 40),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => IteamAdd()));
                                  },child: Image.asset("assets/Mask3.jpg",height:140,)),


                                  SizedBox(
                                      height: 1),
                                  Text("34.00"),
                                  SizedBox(
                                      height: 1),
                                  Text("Men T-Shirt",style: TextStyle(fontSize: 15),),
                                  SizedBox(
                                      height: 20),
                                  GestureDetector(onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => IteamAdd()));
                                  },child: Image.asset("assets/Mask4.jpg",height:140,)),
                                  SizedBox(
                                      height: 1),
                                  Text("34.00"),
                                  SizedBox(
                                      height: 1),
                                  Text("Blezer",style: TextStyle(fontSize: 15),),
                                  SizedBox(
                                      height: 1),
                                  GestureDetector(onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => IteamAdd()));
                                  },child: Image.asset("assets/Mask5.jpg",height:140,)),SizedBox(
                                      height: 1),
                                  Text("34.00"),
                                  SizedBox(
                                      height: 1),
                                  Text("Shirt",style: TextStyle(fontSize: 15),),

                                ],),
                            )



                          ],
                        ),
                      ),

                    ],
                  ),
                ),



              ),
            )

        )
    );
  }
}
