import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/anime_club.jpg'),
            SafeArea(
                child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TOT Public company limited',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Divider(),
                  Text(
                      'Dart is a client-optimized programming language for apps on multiple platforms. It is developed by Google and is used to build mobile,'),
                  Divider(),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.wb_sunny,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      SizedBox(width: 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'TOT Academy',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Maung Khonkaen'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  buildWrapPerson(),
                Divider(),
                buildRowFooter(),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Wrap buildWrapPerson() {
    return Wrap(
                 alignment: WrapAlignment.spaceEvenly,
                  spacing: 5,
                  children: List.generate(8,(index) => 
                    Chip(
                        label: Text('${index + 1} Person'),
                        avatar: Icon(Icons.person_add),
                        backgroundColor: Colors.blueAccent,
                      ),
                    ),
                  
                );
  }

  Row buildRowFooter() {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(backgroundImage: AssetImage('assets/images/OIP_5.jpg'),radius: 30,),
                  CircleAvatar(backgroundImage: AssetImage('assets/images/OIP_3.jpg'),radius: 30,),
                  CircleAvatar(backgroundImage: AssetImage('assets/images/dark_png.png'),radius: 30,),
                  SizedBox(
                    width: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.track_changes, color: Colors.deepOrangeAccent,),
                        Icon(Icons.train, color: Colors.deepOrange,),
                        Icon(Icons.wifi, color: Colors.orangeAccent,),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              );
  }
}
