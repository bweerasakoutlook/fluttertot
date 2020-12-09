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
                    Text('TOT Public company limited', 
                    style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Text('Dart is a client-optimized programming language for apps on multiple platforms. It is developed by Google and is used to build mobile,'),
                    Divider(),
                    SizedBox(height:20),
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.wb_sunny, color: Colors.orange,),
                          ],
                        ),
                        SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text('TOT Academy', 
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold, 
                                color: Colors.orange
                                ),
                              ),
                            ],),
                            Row(children: [
                              Text('Maung Khonkaen'),
                            ],),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    
                  ],

                ),
                )
              ),
          ],
        ),
        ),
      );
  }
}
