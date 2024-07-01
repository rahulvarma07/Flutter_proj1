// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShopElem(),
    );
  }
}

class ShopElem extends StatelessWidget {
  const ShopElem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 1, 9, 39),
      body: Container(
        height: 750,
        width: 600,
        // color: Colors.white,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),
            ),
          color: Colors.white,
        ),


       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  topText("Daily", 30.0),
                  topText("Grocery Food", 0),
                ]
              ),

              topLesfIcon(),
            ],
          ),

          SizedBox(height: 30, width: double.infinity,),

          Container(
            margin: EdgeInsets.only(left: 20),
            height: 45,
            width: 370,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(35)),
            ),

            child: ListView(
              scrollDirection: Axis.horizontal,
              
              //scrollDirection: Axis.horizontal,
              children: [
                itemView("Fruits"),
                itemView("Vegetables"),
                itemView("Spices"),
                itemView(""),
              ],
            ),
          ),

          SizedBox(height: 30, width: double.infinity,),

          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Popular Fruits",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 30, width: double.infinity,),

          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(left: 20, right: 20),
            // color: Colors.amber,
            height: 450,
            width: 400,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              )
            ),

            child: ListView(
              padding: EdgeInsets.all(0.8),
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                          iconImg(),
                          iconImg(),
                      ],
                    ),

                    Row(
                      children: [
                          iconImg(),
                          iconImg(),
                      ],
                    ),

                    Row(
                      children: [
                          iconImg(),
                          iconImg(),
                      ],
                    ),

                  ],
                )
              ],
            ),
          ),


          
        ],
       ),
      ),
    );
  }
  

// ........................................................................
  // Functions Starting
  // 1. My Top Text Function..
  Padding topText(String str, double topPad){ 
    return Padding(
      padding:EdgeInsets.only(
              top: topPad,
              left: 20,
            ),
            child: Text(
              "$str",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }

  //2. My TopLeft Icon (Notifications)
  Padding topLesfIcon(){
    return Padding(
      padding: EdgeInsets.only(
            top: 25,
            left: 130,
            ),
            child: Container(
            height: 70,
            width:  50,
            decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 0.2,
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: IconButton(
              padding: EdgeInsets.all(2),
              icon: Icon(Icons.notifications_none),
              iconSize: 40,
              onPressed: (){

              },
            ),
          ),
    );
   }

   // First Selection Options..
   Padding itemView(String str){
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Container(
        padding: EdgeInsets.all(1),
        height: 70,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.grey[300],
        ),
        child: TextButton(
          onPressed: (){},
          child: Text(
            "$str",
            style: TextStyle(
              color:  Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
    ),
    );
   }

   // Fruit's and Vegitables Icons
   Container iconImg(){
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width:  140,
      color: Colors.amber,
    );



  }
}