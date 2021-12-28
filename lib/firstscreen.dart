import 'package:flutter/material.dart';
import 'mynavigation.dart';
class FirstPage extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('First App'),),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('This is First Screen'),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed('/second', arguments:1234);
          },
              child: Text('Goto Second'))
        ],
      ),
    ),
  );
}
}