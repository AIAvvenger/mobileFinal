import 'package:flutter/material.dart';
import 'package:color/NavBar.dart';
import 'package:color/silvertrouser.dart';

class TrousersPage extends StatefulWidget {

  @override
  _TrousersPageState createState() => _TrousersPageState();
}

class _TrousersPageState extends State<TrousersPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Trousers', style: TextStyle(color: Colors.black),),
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
                height: 410,
                child: ListTile(
                  title: Image.network('https://rohan.imgix.net/product/05919P05.jpg?w=618&auto=format&q=77',
                    height: 350,
                    fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Trouser #2', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => SilverTrouser());
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
                width: 350,
                height: 370,
                child: ListTile(
                  title: Image.network('https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F7a%2F3c%2F7a3c96f09b8887c7ee286361982fe4cda6e12f0f.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5Bladies_trousers_chinosslacks%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]',
                    height: 310,
                    fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Trouser #1', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
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
                height: 400,
                child: ListTile(
                  title: Image.network('https://assetsprx.matchesfashion.com/img/product/1283872_1_large.jpg?width=600&quality=90&',
                    height: 340,
                    fit: BoxFit.fill,),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Trouser #3', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
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