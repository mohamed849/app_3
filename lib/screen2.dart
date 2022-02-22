import 'package:app_3/screen1.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {


  void navigatScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return Screen1();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Screen2"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("", style: TextStyle(fontSize: 30),),
            InkWell(
                child: Text(
                  "Go to Screen 1",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  navigatScreen(
                    context,
                  );
                }),
          ]),
        ),
      ),
    );
  }
}
