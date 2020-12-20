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

  Future<void> getData(int id) async {
    var url = 'https://api.codingthailand.com/api/course/$id';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      detail = json.decode(response.body);
      print(detail['data']);
      // setState(() {
      //   data = detail['data'];
      //   isLoading = false;
      // });
    } else {
      // setState(() {
      //   isLoading = false;
      // });
      print('error from backend 400/500');
    }
  }

  @override
  Widget build(BuildContext context) {
    product = ModalRoute.of(context).settings.arguments;

    getData(product['id']);

    return Scaffold(
      appBar: AppBar(
        title: Text('${product['title']}'),
      ),
      body: Text('${product['title']}'),
    );
  }
}
