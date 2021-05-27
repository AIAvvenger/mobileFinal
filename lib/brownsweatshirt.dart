import 'package:flutter/material.dart';

class BrownSweatShirt extends StatelessWidget {
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
                  Image.network('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-sweatshirts-under-50-dollars-lead-1600109928.jpg?crop=0.490xw:0.981xh;0.510xw,0.0128xh&resize=640:*',
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
                            child: Text('''Article number:                                             121152'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Care:                                     machine wash at 40°C'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Season:                                                   All seasons'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Material:                       35% polyester, 65% cotton'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Producing Country:                                      Belarus'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Manufacturer's Size:                                           4XL'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:  Text('Height:                                              182cm, 188cm'),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Color:                                                                Brown'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Code:                                                            1942400'''),
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
