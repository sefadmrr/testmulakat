import 'package:flutter/material.dart';

class LocationStar extends StatelessWidget {
  const LocationStar({
    Key? key, required this.icon, required this.km, required this.iconSecond, required this.rating,
  }) : super(key: key);
  final IconData icon;
  final String km;
  final IconData iconSecond;
  final String rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:
          const EdgeInsets.only(left: 33, top: 25.83),
          child: Icon(
            size: 30,
            icon,
            color: Color(0xFF2ECF80),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 13, top: 25.83),
          child: Text(
            km,
            style: TextStyle(
              color: Color(0xFF3B3B3B).withOpacity(0.5),
            ),
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.only(left: 33, top: 25.83),
          child: Icon(
            iconSecond,
            size: 30,
            color: Color(0xFF2ECF80),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 13, top: 25.83),
          child: Text(
            rating,
            style: TextStyle(
              color: Color(0xFF3B3B3B).withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}