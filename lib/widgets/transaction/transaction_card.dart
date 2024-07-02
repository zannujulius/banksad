import 'package:banksad/models/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.transactiondetails});

  final TransactionModel transactiondetails;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 4,
        shadowColor: const Color.fromARGB(80, 238, 238, 238),
        padding: const EdgeInsets.all(10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(2),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 48,
                width: 48,
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(9),
                  ),
                  color: Color.fromARGB(230, 255, 199, 221),
                ),
                child: Transform.rotate(
                    angle: 0.3,
                    child: const Icon(
                      Icons.sports_basketball_outlined,
                      size: 26,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 8,
                  // ),
                  Text(
                    "Dribble Premium",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "3 Dec 2021",
                    style: TextStyle(
                        color: Color.fromARGB(255, 132, 132, 132),
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
          const Text(
            "-\$18",
            style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 225, 73, 73),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
