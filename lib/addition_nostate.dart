import 'package:flutter/material.dart';

class AdditionNoState extends StatelessWidget{

  TextEditingController Num1  = new TextEditingController();
  TextEditingController Num2  = new TextEditingController();
  String Result = '0';
  int sum = 0;

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
                    onPressed: (){
                        sum = int.parse(Num1.text) + int.parse(Num2.text);
                        Result = sum.toString();
                        print('=== Addtion is ' + Result);
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