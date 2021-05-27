import 'package:flutter/material.dart';

class BlackShirt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Black Shirt', style: TextStyle(color: Colors.black),),
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
                    Image.network('https://images.satu.kz/46090190_w640_h640_futbolki-muzhskie.jpg',
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
                              child: Text('''Article number:                                        OXO-1380'''),
                            ),
                            Divider(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('''Collection:                                                      Big Boy'''),
                            ),
                            Divider(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('''Season:                                                   All seasons'''),
                            ),
                            Divider(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('''Material:                                               Cotton 100%'''),
                            ),
                            Divider(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('''Producing Country:                                        Russia'''),
                            ),
                            Divider(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('''Density:                                                    135 g/m^2'''),
                            ),
                            Divider(),
                            Align(
                              alignment: Alignment.topLeft,
                              child:  Text('Height:                                             176 sm, 182sm'),
                            ),
                            Divider(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('''Color:                                                                  Black'''),
                            ),
                            Divider(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('''Code:                                                         20234449'''),
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
