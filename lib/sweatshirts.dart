import 'package:flutter/material.dart';
import 'package:color/NavBar.dart';
import 'package:color/brownsweatshirt.dart';

class SweatShirtsPage extends StatefulWidget {

  @override
  _SweatShirtsPageState createState() => _SweatShirtsPageState();
}

class _SweatShirtsPageState extends State<SweatShirtsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('SweatShirts', style: TextStyle(color: Colors.black),),
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
                  title: Image.network('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-sweatshirts-under-50-dollars-lead-1600109928.jpg?crop=0.490xw:0.981xh;0.510xw,0.0128xh&resize=640:*'),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('SweatShirt #1', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => BrownSweatShirt());
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
                height: 410,
                child: ListTile(
                  title: Image.network('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-sweatshirts-for-men-1-1584618720.jpg?crop=1xw:1xh;center,top&resize=480:*',
                  height: 350,
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('SweatShirt #2', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
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
                  title: Image.network('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-mens-sweatshirts-1-1588163182.jpg?resize=480:*',
                  height: 340,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('SweatShirt #3', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
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