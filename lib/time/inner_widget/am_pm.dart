import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  final bool isAm;
  const AmPm({super.key, required this.isAm});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      alignment: Alignment.center,
      child: Text(
        isAm ? "am" : "pm",
        style: const TextStyle(
            fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
