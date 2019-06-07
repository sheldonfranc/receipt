import 'package:receipt_hub_app/model/Bank.dart';

class BankListViewModel {

  List<Bank> banks;
  BankListViewModel({this.banks});

  factory BankListViewModel.fromJson(Map<String, dynamic> parsedJson) {
    return new BankListViewModel(
        banks: parsedJson['banks'] as List);
  }
}
