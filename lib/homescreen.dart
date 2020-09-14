import 'package:boltappapp/Feauters.dart';
import 'package:boltappapp/Menu.dart';
import 'package:boltappapp/MyHomePage.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.keyboard_backspace),
          color: Colors.black,
          onPressed: (){
          Navigator.pop(context);
          },

        ),
        actions: [IconButton(icon: Icon(Icons.menu,),
          color: Colors.black,
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));

          },
        ),
          IconButton(icon: Icon(Icons.hdr_strong,),
            color: Colors.black,
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),],
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(elevation: 5.0,shadowColor: Colors.white,borderRadius: BorderRadius.circular(5.0),
                  child: TextField(decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                      icon: Material(elevation: 1.0,borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          child: IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: null)),
                      hintText: 'Search your product',

                      border: InputBorder.none
                  ),),
                ),
              ),SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories'),Text('See all')
                  ],
                ),
              ),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: RaisedButton(onPressed: (){},padding: EdgeInsets.all(0.0),child: Container(

                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],),
                        ),
                        height: 50,
                        child: Container(
                            constraints: BoxConstraints(maxHeight: 150.0,maxWidth: 100.0),
                            alignment: Alignment.center,

                            child: Text("Women",style: TextStyle(color: Colors.white),)),),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: RaisedButton(onPressed: (){},padding: EdgeInsets.all(0.0),child: Container(

                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Colors.red,
                            Colors.red,
                            Colors.redAccent,
                            Colors.redAccent,
                            Colors.pink,
                          ],),
                        ),
                        height: 50,
                        child: Container(
                            constraints: BoxConstraints(maxHeight: 150.0,maxWidth: 100.0),
                            alignment: Alignment.center,

                            child: Text("Men",style: TextStyle(color: Colors.white),)),),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: RaisedButton(onPressed: (){},padding: EdgeInsets.all(0.0),child: Container(

                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Colors.green,
                            Colors.green,
                            Colors.lightGreen,
                            Colors.lightGreenAccent,
                          ],),
                        ),
                        height: 50,
                        child: Container(
                            constraints: BoxConstraints(maxHeight: 150.0,maxWidth: 100.0),
                            alignment: Alignment.center,

                            child: Text("Kids",style: TextStyle(color: Colors.white),)),),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: RaisedButton(onPressed: (){},padding: EdgeInsets.all(0.0),child: Container(

                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[

                            Colors.deepOrange,
                            Colors.deepOrange,
                            Colors.amber,
                            Colors.amberAccent,

                          ],),
                        ),
                        height: 50,
                        child: Container(
                            constraints: BoxConstraints(maxHeight: 150.0,maxWidth: 100.0),
                            alignment: Alignment.center,

                            child: Text("Shirts",style: TextStyle(color: Colors.white),)),),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: RaisedButton(onPressed: (){},padding: EdgeInsets.all(0.0),child: Container(

                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Colors.brown,
                            Colors.pink,
                            Colors.pinkAccent,
                            Colors.deepOrangeAccent,

                          ],),
                        ),
                        height: 50,
                        child: Container(
                            constraints: BoxConstraints(maxHeight: 150.0,maxWidth: 100.0),
                            alignment: Alignment.center,

                            child: Text("Fants",style: TextStyle(color: Colors.white),)),),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: RaisedButton(onPressed: (){},padding: EdgeInsets.all(0.0),child: Container(

                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Colors.purple,
                            Colors.purpleAccent,
                            Colors.deepPurple,
                            Colors.deepPurpleAccent,

                          ],),
                        ),
                        height: 50,
                        child: Container(
                            constraints: BoxConstraints(maxHeight: 150.0,maxWidth: 100.0),
                            alignment: Alignment.center,

                            child: Text("Shoes",style: TextStyle(color: Colors.white),)),),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Featured'),GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Feauters()));
                    },child: Text('See all'))
                  ],
                ),
              ),

              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask0.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$34.00"),SizedBox(height: 10,),
                          Text("T-Shirt"),


                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask1.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$34.00"),SizedBox(height: 10,),
                          Text("Women T-Shirt"),


                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask2.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$29.00"),SizedBox(height: 10,),
                          Text("Man T-Shirt"),


                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask3.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$30.00"),SizedBox(height: 10,),
                          Text("Woman T-Shirt"),


                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask4.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$69.00"),SizedBox(height: 10,),
                          Text("Blezer"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask5.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$72.00"),SizedBox(height: 10,),
                          Text("Shirt"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Best sell'),Text('See all')
                  ],
                ),
              ),

              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask5.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$72.00"),SizedBox(height: 10,),
                          Text("Shirt"),


                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask4.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$69.00"),SizedBox(height: 10,),
                          Text("Blezer"),


                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask3.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$30.00"),SizedBox(height: 10,),
                          Text("Woman T-Shirt"),


                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask2.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$29.00"),SizedBox(height: 10,),
                          Text("Man T-Shirt"),


                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask1.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$34.00"),SizedBox(height: 10,),
                          Text("Woman T-Shirt"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Mask0.jpg",height: 140,),SizedBox(height: 10,),
                          Text("\$34"),SizedBox(height: 10,),
                          Text("T-Shirt"),
                        ],
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

