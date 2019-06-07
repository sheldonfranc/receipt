import 'package:flutter/material.dart';
import 'package:receipt_hub_app/transaction_page.dart';

class MerchantPage extends StatelessWidget {
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
          title: Text("Merchant Info"),
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() => Navigator.pop(context, false),
            )
        ),
        // body: gridLayout.build(),
        body: new Merchant(),
      ),
    );
  }

  MerchantPage({Key key, this.bankIdentifier})  : super(key: key);
  final int bankIdentifier;
}

class Merchant extends StatefulWidget {

  @override
  MerchantState createState() => new MerchantState();

  Merchant({Key key, this.bankIdentifier})  : super(key: key);
  final int bankIdentifier;
}

class MerchantState extends State<Merchant> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
         resizeToAvoidBottomPadding: false,
         body: TheGridView().build(context)
     );
  }
}


class TheGridView {
  Card makeGridCell(BuildContext context, String fileLocation){
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> TransactionPage()));
        },
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Center(child: Image.asset(fileLocation, width: 137, height: 137,))
          ]
          ,
        ),
      ),
    );
  }

  GridView build(context) {
    return GridView.count(
      primary: true,
      padding: EdgeInsets.all(20.0),
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      mainAxisSpacing: 40.0,
      crossAxisSpacing: 40.0,
      children: <Widget>[
        makeGridCell(context, 'images/logo/sams_club_logo.png'),
        makeGridCell(context, 'images/logo/costco_logo.png'),
        makeGridCell(context, 'images/logo/kohls_logo.png'),
        makeGridCell(context, 'images/logo/gamestop_logo.png'),
      ]
    );
  }
}


