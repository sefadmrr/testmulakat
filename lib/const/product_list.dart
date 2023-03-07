import 'package:flutter/material.dart';
import 'package:testmulakat/const/project_color.dart';
import 'package:testmulakat/const/project_padding.dart';
import 'package:testmulakat/const/project_text_style.dart';

class ProductList extends StatelessWidget {
  const ProductList(
      {Key? key,
      required this.size,
      required this.pngText,
      required this.price,
      required this.productName})
      : super(key: key);
  final Size size;
  final String pngText;
  final String price;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.nearestRestaurantPadding,
      child: Container(
        width: size.width * 0.90,
        height: size.height * 0.10,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: ProjectPadding.nearestRestaurantPadding,
              child: Container(
                width: size.width * 0.18,
                height: size.height * 0.18,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/${pngText}.png')),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),
            ),
            Text(productName,
                style: ProjectTextStyle.nearestRestaurantTitleTextStyleTitle),
            Text(
              price,
              style: ProjectTextStyle.priceStyle,
            ),
          ],
        ),
      ),
    );
  }
}
