import 'package:flutter/material.dart';
import 'package:myapp/main_view.dart';
import 'package:myapp/games_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[600],
          title: Text("Nintendo Games"),
        ),
        body: MainView(),
      ),
    );
  }
}
