import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/home_page.dart';
import 'package:ngdemo5/pages/signin_page.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _callHomePage() {
    //Navigator.pushReplacementNamed(context, HomePage.id);
    Navigator.pushReplacementNamed(context, SignInPage.id);
  }

  _initTimer() {
    Timer(Duration(seconds: 2), () {
      _callHomePage();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/images/ic_logo.png",
                height: 100,
                width: 100,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      "Powered by Facebook",
                      style: TextStyle(color: Colors.black54, fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}