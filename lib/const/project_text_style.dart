import 'package:flutter/material.dart';
import 'package:testmulakat/const/project_color.dart';

class ProjectTextStyle {
  static TextStyle nearestRestaurantTitleTextStyleTitle=TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: ProjectColor.nearestRestaurantTitleTextStyleTitleColor);
  static TextStyle nearestRestaurantTitleTextStyleSubTitle=TextStyle(
  fontSize: 13,
  color: ProjectColor.nearestRestaurantTitleTextStyleSubTitleColor);
  static TextStyle priceStyle=TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: ProjectColor.priceColor,
  );

  static TextStyle buttonTextStyle=TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold);
}