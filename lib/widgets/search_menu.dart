import 'package:flutter/material.dart';

Widget buildSearchMenu() {
  return Row(
    children: [
      Expanded(
        flex: 5,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0XFFF9A84D).withOpacity(0.2),
          ),
          child: TextField(
            style: TextStyle(
              fontSize: 15,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFFDA6317),
                ),
                hintText: 'What do you want to order?',
                hintStyle: TextStyle(
                    fontSize: 15, color: Color(0xFFDA6317).withOpacity(0.4))),
          ),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        flex: 1,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0XFFF9A84D).withOpacity(0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(13),
              child: Icon(
                Icons.menu,
                color: Color(0xFFDA6317),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}