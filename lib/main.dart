import 'package:flutter/material.dart';
import 'package:fluttertot/pages/home_stack/home_stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          // canvasColor: Color(0xffdcedc8),
          accentColor: Colors.lightGreenAccent[100],
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 30,
                color: Colors.red[400],
                fontWeight: FontWeight.bold),
          )),
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(title: 'Flutter TOT app'),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeStack(),
        '/homestack' : (context) => HomeStack(),
      },
    );
  }
}
