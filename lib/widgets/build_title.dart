import 'package:flutter/material.dart';


class BuildTitle extends StatelessWidget {
  const BuildTitle({Key? key, required this.title, required this.title2}) : super(key: key);
  final String title;
  final String title2;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 31,
                    color: Color(0XFF09051C),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              title2,
              style: TextStyle(
                  fontSize: 31,
                  color: Color(0XFF09051C),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 75.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.notification_important_rounded,
              color: Colors.white,
              size: 40,
            ),
          ),
        )
      ],
    );
  }
}
