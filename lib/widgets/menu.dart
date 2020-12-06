import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/dark_png.png'),
            ),
            accountName: Text('Weerasak Bunsuk'),
            accountEmail: Text('bweerasak@outlook.com'),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Main page'),
            subtitle: Text('Descript of main page'),
            trailing: Icon(Icons.exit_to_app_outlined),
            selected: ModalRoute.of(context).settings.name=='homestack/home' ? true : false,
            onTap: () {
              Navigator.of(context, rootNavigator: true)
              .pushNamedAndRemoveUntil('/homestack', (route) => false);
            },
          ),
          ListTile(
            leading: Icon(Icons.portrait_outlined),
            title: Text('Product page'),
            subtitle: Text('Descript of product page'),
            trailing: Icon(Icons.exit_to_app_outlined),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
