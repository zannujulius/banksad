import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  const Topbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Banksad",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        IconButton(
          onPressed: () {
            // print("clicked");
          },
          icon: const Icon(Icons.notifications_active_outlined),
        )
      ],
    );
  }
}
