import 'package:flutter/material.dart';
import 'package:receipt_hub_app/transaction_page.dart';

class MerchantPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          title: Text("Merchant Info"),
        ),
        // body: gridLayout.build(),
        body: new Merchant(),
      ),
    );
  }

}

class Merchant extends StatefulWidget {
  @override
  MerchantState createState() => new MerchantState();
}

class MerchantState extends State<Merchant> {
  @override
  Widget build(BuildContext context) {
    var merchants = ["Walmart", "Amazon", "Target", "Costco", "Kohls", "BJs"];
    return new GridView.builder(
      itemCount: merchants.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return new GestureDetector(
          child: new Card(
            elevation: 2.0,
            child: new Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white70, width: 5.0),
              ),
              alignment: Alignment.centerLeft,
              margin: new EdgeInsets.only(top: 10.0, bottom: 10.0,left: 10.0),
//              child: new Image(image: new AssetImage('images/amazon.png')),
                child: CircleAvatar(
                  backgroundImage: ExactAssetImage('images/amazon.png'),
                  minRadius: 80,
                  maxRadius: 120,
                )
//              child: new ButtonTheme.bar( // make buttons use the appropriate styles for cards
//                  child: new ButtonBar(
//                      children: <Widget>[
//                        new FlatButton(
//                          child: new Align(
//                            alignment: Alignment.bottomCenter,
//                            child: new Text('View Transactions'),
//                          ),
//                          onPressed: () {
//                            print("Pressed");
//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => TransactionPage()));
//                             },
//                        ),
//                        ])),
            ),
          ),
          onTap: () {
            print("pressed");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransactionPage()));
          },
        );
      },
    );
  }
}
