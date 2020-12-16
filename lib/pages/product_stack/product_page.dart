import 'package:flutter/material.dart';
import 'package:fluttertot/models/product_model.dart';
import 'package:fluttertot/widgets/menu.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Data> data = [];

  Future<void> getData() async {
    var url = 'https://api.codingthailand.com/api/course';
    var response = await http.get(url);
    // print(response.body);
    // print(json.decode(response.body));
    final Product product = Product.fromJson(json.decode(response.body));
    // print(product.data);
    setState(() {
      data = product.data;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, 'productstack/detail');
              },
              title: Text('${data[index].title}'),
              subtitle: Text('${data[index].detail}'),
              trailing: Chip(
                label: Text('${data[index].view}'),
                backgroundColor: Colors.orange[300],
              ),
              leading: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: NetworkImage(data[index].picture),
                      fit: BoxFit.cover,
                    )),
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: data.length),
    );
  }
}
