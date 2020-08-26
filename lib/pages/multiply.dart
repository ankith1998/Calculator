import 'package:calculator/pages/operation.dart';
import 'package:flutter/material.dart';

class Multiply extends StatelessWidget {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Multiplication"),
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                      prefixIcon: Icon(Icons.create),
                    )
                  ),
               SizedBox(height: 20.0,),
               TextField(
                 controller: num2,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.create),
                          hintText: "Enter number",
                          border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20.0)
              ),
          ),
                ),
               SizedBox(height: 20.0,),
                GestureDetector(
                  onTap: (){
                    var n1 = double.parse(num1.text);
                    var n2 = double.parse(num2.text);
                    var pro = n1*n2;
                    print(pro);
                  },
                  child: Container(
                    width: 250.0,
                    height: 50.0,
                    child: Center(child: Text("Multiply")),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(colors:[Colors.lightGreenAccent,Colors.black26]),
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
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(colors: [Colors.lightGreenAccent,Colors.black]),
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
