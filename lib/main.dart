import 'package:flutter/material.dart';
import 'package:receipt_hub_app/landing_page.dart';

void main() => runApp(ReceiptLandingPage());

class ReceiptLandingPage extends StatelessWidget {
  // Root Widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new LandingPage(),
    );
  }
}