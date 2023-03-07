import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.size, required this.pngText}) : super(key: key);
  final Size size;
  final String pngText;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      child: Container(
        width: size.width*1,
        height: MediaQuery.of(context).size.height * 0.33,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/${pngText}.png'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
