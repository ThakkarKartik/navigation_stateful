import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'mynavigation.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main App Desing',
      // routes:{
      //   'first': () => FirstPage(data: 'abc'),
      //
      // } ,
      // home: FirstPage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
