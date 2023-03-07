import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  const Email({Key? key, required this.email, required this.password, required this.emailController, required this.passwordController, }) : super(key: key);
  final String email;
  final String password;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: TextField(

                controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: email,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: password,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
