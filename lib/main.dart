import 'package:app_3/screen1.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(HomePage());
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Screen1(),
      ),
    );
  }
}
