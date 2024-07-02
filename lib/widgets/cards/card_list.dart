import 'package:banksad/widgets/cards/card_form.dart';
import 'package:banksad/widgets/cards/card_new_btn.dart';
import 'package:flutter/material.dart';
import 'package:banksad/models/card_model.dart';
import 'package:banksad/widgets/cards/banking_card.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CardList();
  }
}

class _CardList extends State<CardList> {
  final List<CardModel> _cards = [
    CardModel(
        balance: "1400",
        number: "1234 5678 9012 3456",
        expirydate: "09/24",
        type: CardType.credit.label,
        provider: CardProvider.verve.label),
    CardModel(
        balance: "2500",
        number: "2345 6789 0123 4567",
        expirydate: "06/15",
        type: CardType.debit.label,
        provider: CardProvider.visa.label),
  ];

  void _addCard(CardModel card) {
    setState(() {
      _cards.add(card);
    });
  }

  void _openCardForm() {
    showModalBottomSheet(
        // isScrollControlled: true,
        context: context,
        builder: (ctx) {
          return SizedBox(
            width: MediaQuery.of(ctx).size.width,
            // Add some padding if necessary
            child: CardForm(
              onAddCard: _addCard,
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _cards.length + 1,
        itemBuilder: (ctx, index) {
          if (index == _cards.length) {
            return NewCardButton(onOpenCardModal: _openCardForm);
          } else {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: BankingCard(
                card: _cards[index],
              ),
            );
          }
          // return BankingCard(
          //   card: cards[index],
          // );
        },
      ),
    );
  }
}
