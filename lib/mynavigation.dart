import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'firstscreen.dart';
import 'main.dart';
import 'addition.dart';
import 'addition_nostate.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch(settings.name) {
      case('/'):
        return MaterialPageRoute(builder: (_) => FirstPage());
      case('/second'):
        if(args is String) {
          return MaterialPageRoute(builder: (_) => SecondPage(args));
        }
        else{
          return MaterialPageRoute(builder:(_) => ErrorPage());
        }
      default:
        return MaterialPageRoute(builder:(_) => ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Error in Navigation'),
        ),
      )
    );
  }
}