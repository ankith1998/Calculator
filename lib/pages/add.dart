import 'package:calculator/main.dart';
import 'package:calculator/pages/operation.dart';
import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Addition"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20.0,),
                TextField(
                  controller: num1,
                  decoration: InputDecoration(
                    hintText: "Enter number",
                    prefixIcon: Icon(Icons.create),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                  ),
                ),
                SizedBox(height: 20.0,),
                TextField(
                  controller: num2,
                  decoration: InputDecoration(
                    hintText: "Enter number",
                    prefixIcon: Icon(Icons.create),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                  ),
                ),
                SizedBox(height: 20.0,),
                GestureDetector(
                  onTap: (){
                    var n1 = double.parse(num1.text);
                    var n2 = double.parse(num2.text);
                    var sum = n1 + n2;
                    print(sum.toStringAsFixed(2));
                  },
                  child: Container(
                    width: 250.0,
                    height: 50.0,
                    child: Center(child: Text("ADD")),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.indigo,Colors.black26]),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop(context);
                  },
                  child: Container(
                    width: 250.0,
                    height: 50.0,
                    child: Center(child: Text("Back")),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.indigo,Colors.blueGrey]),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
