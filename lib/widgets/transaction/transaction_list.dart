import 'package:banksad/models/transaction_model.dart';
import 'package:banksad/widgets/transaction/transaction_card.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  TransactionList({super.key});

  final List<TransactionModel> _transactions = [
    TransactionModel(
      icon: const Icon(Icons.fastfood, color: Colors.orange),
      time: '3:00 PM',
      price: '-\$20',
      description: 'Bought Fast Food',
      color: '#FFA500', // Orange
    ),
    TransactionModel(
      icon: const Icon(Icons.shopping_cart, color: Colors.blue),
      time: '5:45 PM',
      price: '-\$45',
      description: 'Grocery Shopping',
      color: '#0000FF', // Blue
    ),
    TransactionModel(
      icon: const Icon(Icons.local_gas_station, color: Colors.green),
      time: '8:30 AM',
      price: '-\$30',
      description: 'Gas Station',
      color: '#008000', // Green
    ),
    TransactionModel(
      icon: const Icon(Icons.coffee, color: Colors.brown),
      time: '9:15 AM',
      price: '-\$5',
      description: 'Morning Coffee',
      color: '#A52A2A', // Brown
    ),
    TransactionModel(
      icon: const Icon(Icons.movie, color: Colors.red),
      time: '7:00 PM',
      price: '-\$15',
      description: 'Movie Tickets',
      color: '#FF0000', // Red
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _transactions.length,
        itemBuilder: (ctx, index) {
          return Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: TransactionCard(transactiondetails: _transactions[index]));
        });
  }
}
