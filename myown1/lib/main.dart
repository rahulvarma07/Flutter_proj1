// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 19, 54),
        body: Column(children: [
          LoginPage(),
        ],),
      ),
    );
  }



  Column LoginPage(){
    return Column(
      children: [
        Container(
          height: 480,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),
            )
          ),


          child: Center(
            child: Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:[
                    Image.asset('assets/images/img3.jpeg', height: 400, width: 420),
                    Image.asset('assets/images/img3.jpeg', height: 400, width: 420),
                  ],
                ),
              ),
            ),
          ),
        ),


        SizedBox(height: 80,), // Gap Between 


        Text(
          "Shop your daily groceries", // First Text..
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),

        SizedBox(height: 30,),

        Center(
          child: Text(
            "The easiest way to share your family's grocery shopping...",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 20,
            ),
          ),
        ),

        SizedBox(height: 60,),

        TextButton(
          onPressed: () {},
          child: Container(
            height: 60,
            width: 300,
            // color: Colors.white,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
          
            child : Center(
            child: Text(
              "Get Started",
              //textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
            ),
          ),
        ),
      ],
    );
  }

  
}