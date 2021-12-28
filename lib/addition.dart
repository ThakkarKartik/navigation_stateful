import 'package:flutter/material.dart';
import 'mynavigation.dart';

class Addition extends StatefulWidget{

  @override
  _AddState createState() => _AddState();
}

class _AddState  extends State<Addition>{

  TextEditingController Num1 = new TextEditingController();
  TextEditingController Num2 = new TextEditingController();
  String Result = "0";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Addtion of two Numbers',
      home: Scaffold(
        appBar: AppBar(title: Text('Add two numbers'),),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(20),
                child: TextField(key: Key('txtno1'),decoration: InputDecoration(
                    labelText: 'Enter Any Number'
                ),
                  controller: Num1,
                ),
              ),

              Padding(padding: EdgeInsets.all(20),
                child: TextField(key: Key('txtno2'),decoration: InputDecoration(
                    labelText: 'Enter Any Number'
                ),
                  controller: Num2,
                ),
              ),

              Padding(padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: ()=> {
                      setState((){
                       int sum = int.parse(Num1.text) + int.parse(Num2.text);
                       Result = sum.toString();
                    }),

                    },
                    child: Text('Add Numbers'),
                  )
              ),

              Text("Addition is :" + Result, style: TextStyle(fontSize: 20),)

            ],
          ),
        ),
      ),
    );
  }
}