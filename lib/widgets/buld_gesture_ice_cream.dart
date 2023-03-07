import 'package:flutter/material.dart';

Widget buildGestureBuy(BuildContext context) {
  return GestureDetector(
    onTap: () {
      print('tıklandı');
    },
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/dondurma.png'), fit: BoxFit.cover),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.2,
    ),
  );
}