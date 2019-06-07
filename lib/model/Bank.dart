class Bank {
  final int bankId;
  final String bankName;
  final String bankShortName;
  final String accountType;
  final int accountNumber;
  final String logoUrl;

  Bank({this.bankId, this.bankName, this.bankShortName, this.accountType, this.accountNumber, this.logoUrl});

  factory Bank.fromJson(Map<String, dynamic> parsedJson) {
    return new Bank(
      bankId: parsedJson['bankId'] as int,
      bankName: parsedJson['bankName'] as String,
      bankShortName: parsedJson['bankShortName'] as String,
      accountType: parsedJson['accountType'] as String,
      accountNumber: parsedJson['accountNumber'] as int,
      logoUrl: parsedJson['logoUrl'] as String,
    );
  }
}
