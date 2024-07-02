import 'package:banksad/models/card_model.dart';
import 'package:banksad/widgets/cards/card_number.dart';
import 'package:flutter/material.dart';

class BankingCard extends StatefulWidget {
  const BankingCard({super.key, required this.card});

  final CardModel card;

  @override
  State<StatefulWidget> createState() {
    return _BankingCard();
  }
}

class _BankingCard extends State<BankingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 2, 1, 19),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(
          horizontal: 5), // Adjust the margin as needed
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // top
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "\$ ${widget.card.balance}",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                widget.card.provider.toUpperCase(),
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          // Card number and expiry date row
          CardNumber(number: widget.card.number),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.card
                    .type, // Adjust based on widget.card.type if you have a type field
                style: const TextStyle(
                  color: Color(0xFFD3D3D3),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.card.expirydate,
                style: const TextStyle(
                  color: Color(0xFFD3D3D3),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
