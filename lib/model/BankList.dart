import 'package:flutter/material.dart';
import 'package:receipt_hub_app/model/Bank.dart';
import 'package:receipt_hub_app/model/BankListItem.dart';
import 'package:receipt_hub_app/services/json_reader_service.dart';

class BankList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Bank> bank = new JsonReaderService().getResults();
    Color gradientStart = Colors.deepPurple[700];
    Color gradientEnd = Colors.purple[500];

    Card makeCard(Bank bank) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: [gradientStart, gradientEnd],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
                stops: [0.0,1.0],
                tileMode: TileMode.clamp
            )
        ),
        child: new BankListItem(bank),
      ),
    );

    final makeBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: bank.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(bank[index]);
        },
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white70,
      body: makeBody
    );
  }
}
