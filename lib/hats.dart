import 'package:flutter/material.dart';
import 'package:color/NavBar.dart';
import 'package:color/blackhat.dart';

class HatsPage extends StatefulWidget {

  @override
  _HatsPageState createState() => _HatsPageState();
}

class _HatsPageState extends State<HatsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Hats', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),),
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
                width: 350,
                height: 400,
                child: ListTile(
                  title: Image.network('https://surlybikes.com/uploads/parts/surly-logo-baseball-cap-black-black-CL4989-1000x1000.jpg',
                    height: 340,
                    fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Hat #1', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => BlackHat());
                    Navigator.push(context, route);
                  },  // link to
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
                margin: EdgeInsets.only(top: 10),
                width: 350,
                height: 370,
                child: ListTile(
                  title: Image.network('https://www.australiangear.com/media/catalog/product/cache/5/image/698x/9df78eab33525d08d6e5fb8d27136e95/h/a/hats_co._tommy_flat_cap_-_black_5.1592965906.jpg',
                    height: 310,
                    fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Hat #2', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () => null, // link to
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
                height: 390,
                child: ListTile(
                  title: Image.network('https://www.bootjack.com/wp-content/uploads/2016/05/IMG_3403AA.jpg',
                    height: 330,
                    fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Hat #3', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
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