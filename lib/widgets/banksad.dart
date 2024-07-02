import 'package:banksad/widgets/appbar/topbar.dart';
import 'package:banksad/widgets/buttons/button.dart';
import 'package:banksad/widgets/cards/card_list.dart';
import 'package:banksad/widgets/transaction/transaction_list.dart';
import 'package:flutter/material.dart';

class Banksad extends StatefulWidget {
  const Banksad({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Banksad();
  }
}

class _Banksad extends State<Banksad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Topbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Expanded(
              flex: 0,
              child: CardList(),
            ),
            const SizedBox(
              height: 30,
            ),
            // Action buttion
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Center(
                    child: Button(
                      btnColor: const Color.fromARGB(255, 255, 199, 116),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Transform.rotate(
                              angle: -.5, // The angle in radians
                              child: const Icon(
                                Icons.send,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Transfer",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Expanded(
                  child: Center(
                    child: Button(
                      btnColor: Color.fromARGB(255, 172, 235, 174),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.move_to_inbox,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Request",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recent Transactions",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      print("object");
                    },
                    icon: const Icon(Icons.more_horiz))
              ],
            ),
            Expanded(child: TransactionList()),
          ],
        ),
      ),
    );
  }
}
