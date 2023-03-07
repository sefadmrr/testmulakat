import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  const Paragraph({
    Key? key, required this.paragraph,
  }) : super(key: key);
  final String paragraph;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 33.0, right: 30,top: 23,),
      child: Text(
        paragraph,
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 15),
      ),
    );
  }
}