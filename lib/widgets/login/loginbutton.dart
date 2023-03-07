import 'package:flutter/material.dart';

import '../../ home_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key, required this.login}) : super(key: key);
  final String login;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomePage()));
          print('tıklandı');
        },
        child: Container(
          width: MediaQuery.of(context).size.width*0.5,
          height: MediaQuery.of(context).size.height*0.08,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              login,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
