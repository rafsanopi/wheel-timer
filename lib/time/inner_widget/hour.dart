import 'package:flutter/material.dart';

class Hours extends StatelessWidget {
  final int hours;
  const Hours({super.key, required this.hours});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      alignment: Alignment.center,
      child: Text(
        hours.toString(),
        style: const TextStyle(
            fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
