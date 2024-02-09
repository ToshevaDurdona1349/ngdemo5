import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/home_page.dart';
import 'package:ngdemo5/pages/siginup_page.dart';

class SignInPage extends StatefulWidget {
  static const String id = "signin_page";

  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  _callSignUpPage(){
    Navigator.pushReplacementNamed(context, SignUpPage.id);
  }

  _callHomePage(){
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // #logopart
            Text(
              "Instagram",
              style: TextStyle(fontSize: 45, fontFamily: "Billabong"),
            ),

            // #emailinput
            Container(
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200]),
              child: TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),

            // #passwordinput
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200]),
              child: TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),

            // #signinbutton
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              height: 48,
              child: MaterialButton(
                onPressed: () {
                  _callHomePage();
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            Container(
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black87),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                      onTap: (){
                        _callSignUpPage();
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}