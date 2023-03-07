import 'package:flutter/material.dart';

class TitleTestimonials extends StatelessWidget {
  const TitleTestimonials({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 33.0,top: 20),
      child: Text(
        title,
        style: TextStyle(color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}