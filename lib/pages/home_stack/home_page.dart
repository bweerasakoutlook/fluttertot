import 'package:flutter/material.dart';
import 'package:fluttertot/pages/home_stack/about_page.dart';
import 'package:fluttertot/widgets/header.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String title = 'baowee khonkaen';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    print('init state (home page)');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/dell_logo2.png',
          height: 35,
        ),
        centerTitle: true,
        actions: [
          // IconButton(
            // icon: Icon(Icons.person_add, color: Colors.white, size: 40,), 
            // onPressed: null
            // ),
            IconButton(
            icon: Icon(Icons.exit_to_app, color: Colors.white, size: 40,), 
            onPressed: null
            )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'homestack/about');
                },
                child: Text('About us')),
            Text(
              'Hello $title',
              style: Theme.of(context).textTheme.headline1,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    title = 'www.tot.co.th';
                  });
                },
                child: Text('Press now !!')),
            const Header(),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'This is Baowee app on flutter:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
