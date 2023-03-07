import 'package:flutter/material.dart';
import 'package:testmulakat/const/project_padding.dart';
import 'package:testmulakat/const/project_text_style.dart';

class PngImageItemWidget extends StatelessWidget {
  const PngImageItemWidget({Key? key, required this.title, required this.minute}) : super(key: key);
  final String title;
  final String minute;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.nearestRestaurantPadding,
      child: Column(
        children: [
          SizedBox(height: 120),
          Text(title,
              style: ProjectTextStyle.nearestRestaurantTitleTextStyleTitle),
          SizedBox(height: 4),
          Text(
            minute,
            style: ProjectTextStyle.nearestRestaurantTitleTextStyleSubTitle,
          ),
        ],
      ),
    );
  }
}
