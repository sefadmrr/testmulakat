import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xFF53E88B).withOpacity(0.22),
        ),
        width: MediaQuery.of(context).size.width * 0.11,
        height: MediaQuery.of(context).size.height * 0.055,
        child: Icon(Icons.location_pin,color: Colors.green,size: 25,),
      ),
    );
  }
}