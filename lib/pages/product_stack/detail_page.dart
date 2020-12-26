import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DetailPage extends StatefulWidget {
  DetailPage({Key key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Map<String, dynamic> product;
  Map<String, dynamic> detail;

  Future<Map<String, dynamic>> getData(int id) async {
    var url = 'https://api.codingthailand.com/api/course/$id';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      detail = json.decode(response.body);
      return detail;
    } else {
      throw Exception('error from backend code 400/500');
    }
  }

  @override
  Widget build(BuildContext context) {
    product = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('${product['title']}'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: getData(product['id']),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${snapshot.data['data'][index]['ch_title']}'),
                    subtitle: Text('${snapshot.data['data'][index]['ch_dateadd']}'),
                    trailing: Chip(
                      label: Text('${snapshot.data['data'][index]['ch_view']}'),
                      backgroundColor: Colors.orange[300],
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: snapshot.data['data'].length);
          } else if (snapshot.hasError) {
            Text('have any error ${snapshot.error}');
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
