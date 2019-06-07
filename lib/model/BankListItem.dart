import 'package:flutter/material.dart';
import 'package:receipt_hub_app/model/Bank.dart';
import 'package:receipt_hub_app/merchant_page.dart';

class BankListItem extends StatelessWidget {

  final Bank _bank;

  BankListItem(this._bank);

  @override
  Widget build(BuildContext context) {

    return new ListTile(
        contentPadding:
            EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 22.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24))),
          child: Icon(Icons.account_balance, color: Colors.blue),
        ),
        // leading: new CircleAvatar(child: new Text(_bank.bankId.toString())),
        title: Text(
          _bank.bankName,
          style: TextStyle(color: Colors.amberAccent, fontWeight: FontWeight.bold),
        ),
        // subtitle: new Text(_bank.bankShortName)
      subtitle: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: Text(_bank.accountType+ ' '+ _bank.accountNumber.toString().substring(_bank.accountNumber.toString().length - 4, _bank.accountNumber.toString().length),
                    style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.teal, size: 30.0),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MerchantPage()));
      },
    );
  }
}