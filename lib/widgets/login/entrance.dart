import 'package:flutter/material.dart';

class Entrance extends StatelessWidget {
  const Entrance({Key? key, required this.giris}) : super(key: key);
  final String giris;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 50, left: 50),
        child: Text(
          giris,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
