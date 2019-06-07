import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:receipt_hub_app/model/BankListViewModel.dart';
import 'package:receipt_hub_app/model/Bank.dart';

class JsonReaderService {

  Future<String> loadBankAssert() async {
    return await rootBundle.loadString('mock_data/bank_details.json');
  }

  Future<List<Bank>> loadBankDetails() async {
    String jsonString = await loadBankAssert();
    final jsonResponse = json.decode(jsonString);
    BankListViewModel bankListViewModel = new BankListViewModel.fromJson(jsonResponse[0]);
    return bankListViewModel.banks;
  }

  List<Bank> getResults(){
    return <Bank> [
      Bank(
          bankId: 1, bankName: 'Bank Of America', bankShortName: 'BOA', accountNumber: 1234567890, accountType: 'Credit Card', logoUrl: 'assert/boa.png'),
      Bank(
          bankId: 2, bankName: 'Capital One', bankShortName: 'COF', accountNumber: 9876543210, accountType: 'Credit Card', logoUrl: 'assert/capone.png'),
      Bank(
          bankId: 3, bankName: 'Chase', bankShortName: 'Chase', accountNumber: 8765432190, accountType: 'Credit Card', logoUrl: 'assert/chase.png'),
      Bank(
          bankId: 4, bankName: 'Citi', bankShortName: 'Citi', accountNumber: 2345678901, accountType: 'Credit Card', logoUrl: 'assert/citi.png'),
      Bank(
          bankId: 5, bankName: 'Discover', bankShortName: 'Discover', accountNumber: 3456789012, accountType: 'Credit Card', logoUrl: 'assert/discover.png'),
    ];
  }
}