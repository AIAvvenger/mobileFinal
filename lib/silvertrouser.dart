import 'package:flutter/material.dart';

class SilverTrouser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brown Sweatshirt', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Image.network('https://rohan.imgix.net/product/05919P05.jpg?w=618&auto=format&q=77',
                    height: 350,),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text('Detail Information', style: TextStyle(color: Colors.orangeAccent, fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Article number:                                             181162'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Care:                                     machine wash at 40°C'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Material:                       80% cotton, 12% polyester, 8% elastane'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Producing Country:                                      Belarus'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Manufacturer's Size:                                             M'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:  Text('Height:                                              170cm, 176cm'),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Color:                                                                 Silver'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Code:                                                            1724891'''),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(width: 300,
                      child: TextButton(
                        child: Text('Add to Shopping Cart', style: TextStyle(color: Colors.white),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade400),
                        ),
                        onPressed: () {
                          final snackBar = SnackBar(
                            duration: Duration(seconds: 1),
                            content: Text('Item ADDED'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
