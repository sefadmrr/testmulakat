import 'package:flutter/material.dart';

class HeartWidget extends StatelessWidget {
  const HeartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xFFFF1D1D).withOpacity(0.22),
        ),
        width: MediaQuery.of(context).size.width * 0.11,
        height: MediaQuery.of(context).size.height * 0.055,
        child: Icon(Icons.favorite,color: Colors.red,size: 25,),
      ),
    );
  }
}