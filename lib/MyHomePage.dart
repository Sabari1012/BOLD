
import 'package:boltappapp/Feauters.dart';
import 'package:boltappapp/Menu.dart';
import 'package:boltappapp/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


void main()  => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyHomePage(),
));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 300.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/Mask11.jpg'),
          AssetImage('assets/Mask22.jpg'),
          AssetImage('assets/Mask.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );






    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.keyboard_backspace),
          color: Colors.black,
          onPressed: (){},

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
              Navigator.push(context, MaterialPageRoute(builder: (context) =>homescreen()));
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
              image_carousel,



              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Featured'),GestureDetector(onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Feauters()));
              },
                        child: Text('See all'))
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
