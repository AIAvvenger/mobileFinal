import 'package:flutter/material.dart';
import 'package:color/NavBar.dart';

import 'orangeshort.dart';

class ShortsPage extends StatefulWidget {

  @override
  _ShortsPageState createState() => _ShortsPageState();
}

class _ShortsPageState extends State<ShortsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Shorts',style: TextStyle(color: Colors.black),),
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
                height: 370,
                child: ListTile(
                  title: Image.network('https://cdn11.bigcommerce.com/s-hsi95a83fz/product_images/uploaded_images/5903-beach-shorts-orange-thumb.jpg?t=1585629450&_ga=2.88311448.2069277356.1585516345-1869486607.1578452111',
                    height: 310,
                    fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Orange shorts', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => OrangeShort());
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
                  title: Image.network('https://cdni.llbean.net/is/image/wim/503783_30_41?hei=1095&wid=950&resMode=sharp2&defaultImage=llbstage/A0211793_2',
                  height: 350,
                  fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Blue shorts', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
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
                  title: Image.network('https://www.rebelsport.com.au/dw/image/v2/BBRV_PRD/on/demandware.static/-/Sites-srg-internal-master-catalog/default/dwb36d97f0/images/58253501/Rebel_58253501_black_hi-res.jpg?sw=558&sh=558&sm=fit',
                    height: 340,
                    fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Another shorts', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
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