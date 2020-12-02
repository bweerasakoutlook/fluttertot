import 'package:flutter/material.dart';
import 'package:fluttertot/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        canvasColor: Colors.blue[50],
        accentColor: Colors.lightGreenAccent[100],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter TOT app'),
    );
  }
}
