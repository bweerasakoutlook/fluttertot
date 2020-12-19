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
  bool isLoading = true;

  Future<void> getData() async {
    var url = 'https://api.codingthailand.com/api/course';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final Product product = Product.fromJson(json.decode(response.body));
      setState(() {
        data = product.data;
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
      print('error from backend 400/500');
    }
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
      body: isLoading == true ? Center(child: CircularProgressIndicator(backgroundColor: Colors.orange,strokeWidth: 7.0,))
      : ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, 'productstack/detail');
              },
              title: Text(
                '${data[index].title}',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              subtitle: Text('${data[index].detail}',
                  style: TextStyle(color: Colors.green[500])),
              trailing: Chip(
                label: Text('${data[index].view}',
                    style: TextStyle(color: Colors.blue[800])),
                backgroundColor: Colors.orange[300],
              ),
              leading: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    // boxShadow: BoxShadow.lerpList(a, b, t),
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
