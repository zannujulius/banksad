import 'package:uuid/uuid.dart';

var uuid = const Uuid();

enum CardProvider {
  visa('Visa'),
  verve('Verve'),
  mastercard('MasterCard');

  const CardProvider(this.label);
  final String label;
}

enum CardType {
  debit("Debit card"),
  credit("Credit card");

  const CardType(this.label);
  final String label;
}

class CardModel {
  CardModel({
    required this.balance,
    required this.number,
    required this.expirydate,
    required this.type,
    required this.provider,
  }) : id = uuid.v4();

  final String id;
  final String type;
  final String provider;
  final String balance;
  final String expirydate;
  final String number;
}
