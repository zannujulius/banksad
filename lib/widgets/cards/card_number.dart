import 'package:flutter/material.dart';

class CardNumber extends StatefulWidget {
  const CardNumber({super.key, required this.number});

  final String number;

  @override
  State<StatefulWidget> createState() {
    return _CardNumber();
  }
}

class _CardNumber extends State<CardNumber> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "4225",
          style: TextStyle(
              color: Color(0xFFD3D3D3),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 30,
        ),
        Text(
          "****",
          style: TextStyle(
              color: Color(0xFFD3D3D3),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 30,
        ),
        Text(
          "****",
          style: TextStyle(
              color: Color(0xFFD3D3D3),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 30,
        ),
        Text(
          "****",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
