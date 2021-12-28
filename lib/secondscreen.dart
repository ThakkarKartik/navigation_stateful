import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
String data = "";
SecondPage(String data){
  this.data = data;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(data),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('/');
            },
                child: Text('Go Back'))
          ],
        ),
      ),
    );
  }
}