import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //sifreyenile
      child: Text(
        title,
        style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.green,
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
