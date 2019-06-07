import 'package:flutter/material.dart';
import 'package:receipt_hub_app/model/BankList.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
            primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
            fontFamily: 'Rock Salt'),
        home: new Scaffold(
            appBar: new AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.blueAccent, Colors.deepPurple],
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
              ),
              title: new Text("Bank Details"),
            ),
            body: new BankList()));
  }
}
