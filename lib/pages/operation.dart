import 'package:calculator/pages/add.dart';
import 'package:calculator/pages/division.dart';
import 'package:calculator/pages/multiply.dart';
import 'package:calculator/pages/subtract.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 40.0,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Add()));
            },
            child: Center(
              child: Container(
                width: 250.0,
                height: 150.0,
                child: Center(child: Text("Addition")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(colors: [Colors.teal,Colors.black26]),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Subtr()));
            },
            child: Container(
              width: 250.0,
              height: 150.0,
              child: Center(child: Text("Subtraction")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(colors: [Colors.black26,Colors.teal])
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Multiply()));
            },
            child: Container(
              width: 250.0,
              height: 150.0,
              child: Center(child: Text("Multipilication")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(colors: [Colors.teal,Colors.black26]),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Div()));
            },
            child: Container(
              width: 250.0,
              height: 150.0,
              child: Center(child: Text("Division")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(colors: [Colors.black26, Colors.teal]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
