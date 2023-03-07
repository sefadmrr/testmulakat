import 'package:flutter/material.dart';
import 'package:testmulakat/const/project_padding.dart';
import 'package:testmulakat/product/customicon.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({
    Key? key,
    required this.size,
    required this.pngText, required this.text, required this.name, required this.textSecond,
  }) : super(key: key);

  final Size size;
  final String pngText;
  final String text;
  final String textSecond;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
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
        ),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.20,
        child: Padding(
          padding: ProjectPadding.photoPadding,
          child: Row(
            children: [
              Container(
                width: size.width * 0.24,
                height: size.height * 0.20,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/${pngText}.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(name,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),),
                        Text(
                          '12 April 2021',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF3B3B3B),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
