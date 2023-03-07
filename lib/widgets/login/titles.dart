import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  const Titles({Key? key, required this.baslik, required this.altbaslik}) : super(key: key);

  @override
  final String baslik;
  final String altbaslik;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            baslik,
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 40,
              letterSpacing: 3,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Text(
              altbaslik,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
