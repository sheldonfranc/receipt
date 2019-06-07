import 'package:flutter/material.dart';
import 'package:receipt_hub_app/receipt_page.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: true,
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
          title: Text("Transaction Details"),
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() => Navigator.pop(context, false),
            )
        ),
        body: new Transaction(),
      ),
    );
  }
}


class Transaction extends StatefulWidget {
  @override
  TransactionState createState() => new TransactionState();
}

class TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    Color gradientStart = Colors.deepPurple[700];
    Color gradientEnd = Colors.purple[500];

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: ListView.builder(
          scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index){
              return new Card(
                  elevation: 8.0,
                  margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(colors: [gradientStart, gradientEnd],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0,1.0],
                            tileMode: TileMode.clamp
                        )
                    ),
                    child: new ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      leading: Container(
                        padding: EdgeInsets.only(right: 12.0, top: 10.0),
                        child: Text(
                            "01/05",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                        ),
                      ),
                      title: Text(
                        "Main Event",
                        style: TextStyle(color: Colors.amberAccent, fontWeight:  FontWeight.bold),
                      ),
                      subtitle: Row(children: <Widget>[
                        Text("20 Center Blvd, Newark DE", style: TextStyle(color: Colors.white))
                      ]),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReceiptPage(
                                    merchantBill: 'mainevent.png'
                                )));
                      },
                      trailing: Container(
                        padding: EdgeInsets.only(right: 12.0),
                        child: Text(
                          "\$280.03",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
              );;
            }
        ),
    );
  }
}
