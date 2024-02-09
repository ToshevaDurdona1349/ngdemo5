import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  static const String id = "signup_page";

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  _callSignInPage(){
    Navigator.pushReplacementNamed(context, SignInPage.id);
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

            // #fullnameinput
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
                    hintText: "Fullname",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),

            // #emailinput
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

            // #cpasswordinput
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
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),

            // #signinbutton
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              height: 48,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                  "Sign Up",
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
                    "Already have an account?",
                    style: TextStyle(color: Colors.black87),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                      onTap: (){
                        _callSignInPage();
                      },
                      child: Text(
                        "Sign In",
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