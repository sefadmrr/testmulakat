import 'package:flutter/material.dart';
import 'package:testmulakat/%20home_page.dart';
import 'package:testmulakat/resources/auth_methods.dart';
import 'package:testmulakat/widgets/button.dart';
import 'package:testmulakat/widgets/login/email.dart';
import 'package:testmulakat/widgets/login/entrance.dart';
import 'package:testmulakat/widgets/login/forget_password.dart';
import 'package:testmulakat/widgets/login/loginbutton.dart';
import 'package:testmulakat/widgets/login/titles.dart';

import 'New_Account.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  AuthMethods authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              Titles(baslik: "FoodNinja",altbaslik: "deliever Favorite Food"),
              SizedBox(height: 50),
              Entrance(giris: "Login To Your Account"),
              SizedBox(height: 25),
              Email(email: 'Email',password: 'Password',emailController: emailController,passwordController: passwordController),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ForgetPassword(title: 'Forget Your Password?'),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewAccount()));
                  }, child: ForgetPassword(title: 'SignUp',)),
                ],
              ),
              SizedBox(height: 30),
              ButtonWidget(title: 'Login',onPressed: () async{
                await authMethods.signIn(email: emailController.text, password: passwordController.text).then((value) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                });

              })
            ],
          ),
        ),
      ),
    );
  }
}
