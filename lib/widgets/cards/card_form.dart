import 'package:banksad/models/card_model.dart';
import 'package:flutter/material.dart';

class CardForm extends StatefulWidget {
  const CardForm({super.key, required this.onAddCard});

  final void Function(CardModel card) onAddCard;

  @override
  State<StatefulWidget> createState() {
    return _CardForm();
  }
}

class _CardForm extends State<CardForm> {
  String? _selectedCardType = CardType.credit.label;
  String? _selectedCardProvider = CardProvider.mastercard.label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                "Fill the form below to request for a new card",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              // Card type
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card type',
                ),
                value: _selectedCardType,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCardType = newValue;
                  });
                },
                items:
                    CardType.values.map<DropdownMenuItem<String>>((CardType p) {
                  return DropdownMenuItem<String>(
                    value: p.label,
                    child: Text(p.label),
                  );
                }).toList(),
              ),
              const SizedBox(height: 25),
              // Card provider
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card Provider',
                ),
                value: _selectedCardProvider,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCardProvider = newValue;
                  });
                },
                items: CardProvider.values
                    .map<DropdownMenuItem<String>>((CardProvider p) {
                  return DropdownMenuItem<String>(
                    value: p.label,
                    child: Text(p.label),
                  );
                }).toList(),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                widget.onAddCard(
                  CardModel(
                      balance: "0",
                      number: "4225",
                      expirydate: "05/43",
                      type: _selectedCardType.toString(),
                      provider: _selectedCardProvider.toString()),
                );

                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
