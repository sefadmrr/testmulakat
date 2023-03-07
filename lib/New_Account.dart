import 'package:flutter/material.dart';
import 'package:testmulakat/%20home_page.dart';
import 'package:testmulakat/resources/auth_methods.dart';
import 'package:testmulakat/widgets/button.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  final String giris = "Sign Up For Free";

  final String baslik = "FoodNinja";
  AuthMethods authMethods = AuthMethods();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();

  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildBaslik(),
              SizedBox(height: 50),
              buildSign(),
              SizedBox(height: 25),
              Padding(padding: EdgeInsets.only(left: 25,right: 25),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          hintText: 'Username',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          hintText: 'Username',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          hintText: 'Username',
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite,color: Colors.green,size: 35,),
                        SizedBox(width: 10),
                        Text('Keep Me Signed In',style: TextStyle(color: Colors.black54,fontSize: 18),),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.favorite,color: Colors.green,size: 35,),
                        SizedBox(width: 10),
                        Text('Email Me About Special Pricing',style: TextStyle(color: Colors.black54,fontSize: 18),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              ButtonWidget(title: 'Create Account', onPressed: () async{
                await authMethods.signUpUser(email: emailController.text, password: passwordController.text, username: usernameController.text);
              }),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainerMail(String mail,Icon icon) {
    return Container(
                    decoration: buildBoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Icon(Icons.email_rounded,color: Colors.green),
                          SizedBox(width: 5),
                          Text(mail,style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  );
  }

  Container buildContainerAd(String ad,Icon icon) {
    return Container(
                    decoration: buildBoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(

                        children: [
                          Icon(Icons.person,color: Colors.green),
                          SizedBox(width: 5),
                          Text(ad,style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    );
  }

  Center buildSign() {
    return Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50, left: 50),
              child: Text(
                giris,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          );
  }

  Center buildBaslik() {
    return Center(
            child: Text(
              baslik,
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                letterSpacing: 3,
              ),
            ),
          );
  }
}
