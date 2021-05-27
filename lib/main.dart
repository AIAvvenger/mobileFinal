import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:color/NavBar.dart';
import 'package:color/blackshirt.dart';
import 'package:color/hats.dart';
import 'package:color/orangeshort.dart';
import 'package:color/shirts.dart';
import 'package:color/shorts.dart';
import 'package:color/sweatshirts.dart';
import 'package:color/trousers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Home Page',
          style: TextStyle(color: Colors.black),),
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
              // Shirts
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
                    child: Text('Shirts', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => ShirtsPage());
                    Navigator.push(context, route);
                  }, // link to
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Shorts
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 350,
                height: 380,
                child: ListTile(
                  title: Image.network('https://cdn11.bigcommerce.com/s-hsi95a83fz/product_images/uploaded_images/5903-beach-shorts-orange-thumb.jpg?t=1585629450&_ga=2.88311448.2069277356.1585516345-1869486607.1578452111'),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Shorts', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => ShortsPage());
                    Navigator.push(context, route);
                  },  // link to
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // SweatShirts
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 350,
                height: 380,
                child: ListTile(
                  title: Image.network('https://images-na.ssl-images-amazon.com/images/I/61n%2B7aOyXoL._AC_UX342_.jpg',
                  height: 320,
                  fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('SweatShirts', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => SweatShirtsPage());
                    Navigator.push(context, route);
                  },  // link to
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Trousers
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 350,
                height: 380,
                child: ListTile(
                  title: Image.network('https://rohan.imgix.net/product/05424030.jpg?w=2500&auto=format&q=77',
                    height: 320,
                    fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Trousers', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => TrousersPage());
                    Navigator.push(context, route);
                  },  // link to
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Hats
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 350,
                height: 380,
                child: ListTile(
                  title: Image.network('https://surlybikes.com/uploads/parts/surly-logo-baseball-cap-black-black-CL4989-1000x1000.jpg',
                    height: 320,
                    fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Hats', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => HatsPage());
                    Navigator.push(context, route);
                  },  // link to
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
