import 'package:flutter/material.dart';
import 'package:fluttertot/widgets/menu.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    print('init state (home page)');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
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
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.orange,
                size: 30,
              ),
              onPressed: null)
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'homestack/about');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.orange,
                  ),
                  Text(
                    'About us',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              color: Colors.teal[100],
            ),
          ),
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.teal[200])
            ),
            onPressed: () {}, 
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.map_rounded,
                    size: 80,
                    color: Colors.orange,
                  ),
                  Text(
                    'Map',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'homestack/about');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.file_copy_outlined,
                    size: 80,
                    color: Colors.orange,
                  ),
                  Text(
                    'File copy',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              color: Colors.teal[300],
            ),
          ),
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.teal[400])
            ),
            onPressed: () {}, 
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.picture_as_pdf_sharp,
                    size: 80,
                    color: Colors.orange,
                  ),
                  Text(
                    'PDF',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'homestack/about');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.transfer_within_a_station,
                    size: 80,
                    color: Colors.orange,
                  ),
                  Text(
                    'Transfer within a station',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold
                        ),
                  ),
                ],
              ),
              color: Colors.teal[300],
            ),
          ),
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.teal[500])
            ),
            onPressed: () {}, 
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.wifi,
                    size: 80,
                    color: Colors.orange,
                  ),
                  Text(
                    'Wi-Fi',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
