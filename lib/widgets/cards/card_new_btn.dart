import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class NewCardButton extends StatelessWidget {
  const NewCardButton({super.key, required this.onOpenCardModal});

  final void Function() onOpenCardModal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: DottedBorder(
          color: const Color.fromARGB(255, 87, 87, 87),
          borderType: BorderType.RRect,
          strokeWidth: 1,
          radius: const Radius.circular(10),
          dashPattern: const [3, 6, 3, 3],
          child: Center(
            child: IconButton(
              onPressed: onOpenCardModal,
              icon: const Icon(Icons.add),
            ),
          )),
    );
  }
}
