import 'package:flutter/material.dart';
import 'package:color/hats.dart';
import 'package:color/main.dart';
import 'package:color/shirts.dart';
import 'package:color/shorts.dart';
import 'package:color/sweatshirts.dart';
import 'package:color/trousers.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.domain),
            title: Text('Home Page'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => MyApp());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: Icon(Icons.breakfast_dining),
            title: Text('Shirts'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => ShirtsPage());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: Icon(Icons.breakfast_dining),
            title: Text('Shorts'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => ShortsPage());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: Icon(Icons.breakfast_dining),
            title: Text('SweatShirts'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => SweatShirtsPage());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: Icon(Icons.breakfast_dining),
            title: Text('Trousers'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => TrousersPage());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: Icon(Icons.breakfast_dining),
            title: Text('Hats'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => HatsPage());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
    );
  }
}
