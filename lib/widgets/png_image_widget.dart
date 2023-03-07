
import 'package:flutter/material.dart';
import 'package:testmulakat/const/project_padding.dart';

class PngImageWidget extends StatelessWidget {
  const PngImageWidget({Key? key, required this.size, required this.pngText, required this.child}) : super(key: key);
  final Size size;
  final String pngText;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.horizontalPadding,
      child: Container(
        width: size.width*0.38,
        height: size.height*0.28,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(
                  12.0,
                  26.0
                ),
              )
            ],
            image: DecorationImage(
                image: AssetImage(
                  'assets/${pngText}.png',
                ))),
        child: child,
      ),
    );
  }
}
