import 'package:flutter/material.dart';

class TitleWijie extends StatelessWidget {
  const TitleWijie({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 19.0,left: 33),
      child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color: Colors.black),),
    );
  }
}