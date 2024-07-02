import 'package:flutter/material.dart';

class TransactionModel {
  TransactionModel(
      {required this.icon,
      required this.time,
      required this.price,
      required this.description,
      required this.color});

  final Icon icon;
  final String time;
  final String price;
  final String color;
  final String description;
}
