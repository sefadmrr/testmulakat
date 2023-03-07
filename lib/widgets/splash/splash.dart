import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key, required this.baslik, required this.altbaslik}) : super(key: key);

  @override
  final String baslik;
  final String altbaslik;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 272.0),
      child: Container(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/Logo.png'),
              Text(
                baslik,
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  letterSpacing: 3,
                ),
              ),
              Text(
                altbaslik,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
