import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.5),
          color: Color(0xFF53E88B).withOpacity(0.22),
        ),
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.05,
        child: Center(child: Text(title,
          style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.green),)),
      ),
    );
  }
}