import 'package:flutter/material.dart';

class OrangeShort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orange Short', style: TextStyle(color: Colors.black),),
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
                  Image.network('https://cdn11.bigcommerce.com/s-hsi95a83fz/product_images/uploaded_images/5903-beach-shorts-orange-thumb.jpg?t=1585629450&_ga=2.88311448.2069277356.1585516345-1869486607.1578452111',
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
                            child: Text('''Article number:                                             131064'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Care:                                   gentle washing at 30°C'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Season:                                                        Summer'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Material:                       70% cotton, 30% polyester'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Producing Country:                                      Belarus'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Manufacturer's Size:                                             XS'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:  Text('Height:                                            158 cm, 164 cm'),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Color:                                                              Orange'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Code:                                                            1994787'''),
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
