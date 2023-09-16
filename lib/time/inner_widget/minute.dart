import 'package:flutter/material.dart';

class Minutes extends StatelessWidget {
  final int min;
  const Minutes({super.key, required this.min});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      alignment: Alignment.center,
      child: Text(
        min.toString(),
        style: const TextStyle(
            fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
