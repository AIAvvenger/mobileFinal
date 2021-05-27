import 'package:flutter/material.dart';

class BlackHat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Black Hat', style: TextStyle(color: Colors.black),),
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
                  Image.network('https://surlybikes.com/uploads/parts/surly-logo-baseball-cap-black-black-CL4989-1000x1000.jpg',
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
                            child: Text('''Article number:                                        12113318'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Collection:                                             Funny friend'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Season:                                            spring-summer'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Material:                                               Cotton 100%'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Producing Country:                                         China'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Manufacturer's Size:                                             48'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Color:                                                                  Black'''),
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('''Code:                                                         1979107'''),
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
