import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.child, required this.btnColor});

  final Widget child;
  final Color btnColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          print("object");
        },
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: btnColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        child: Center(child: child));
  }
}
