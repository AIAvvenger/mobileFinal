import 'package:flutter/material.dart';
import 'package:color/NavBar.dart';

import 'blackshirt.dart';

class ShirtsPage extends StatefulWidget {

  @override
  _ShirtsPageState createState() => _ShirtsPageState();
}

class _ShirtsPageState extends State<ShirtsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Shirts',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.search),
                title: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search for...'
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(top: 10),
                width: 350,
                height: 380,
                child: ListTile(
                  title: Image.network('https://images.satu.kz/46090190_w640_h640_futbolki-muzhskie.jpg'),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Black shirt', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => BlackShirt());
                    Navigator.push(context, route);
                  }, // link to
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 350,
                height: 350,
                child: ListTile(
                  title: Image.network('https://images2.minutemediacdn.com/image/fetch/c_fill,g_auto,f_auto,h_1000,w_1107/https%3A%2F%2Fmlsmultiplex.com%2Ffiles%2F2020%2F11%2FTimSays_TimeMelia_MLSPA_BreakingT_shirt_2048x2048.jpg'),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Another shirt', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () => null,  // link to
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 350,
                height: 400,
                child: ListTile(
                  title: Image.network('https://images-na.ssl-images-amazon.com/images/I/61FLgJzwR3L._AC_UX385_.jpg'),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Another shirt', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () => null,  // link to
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}