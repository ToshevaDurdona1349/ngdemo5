import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        //backgroundColor: Color.fromRGBO(0, 127, 255, 1),
        //backgroundColor: HexColor("#007FFF"),
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "Billabong.ttf"),
        ),
      ),
      body: Center(
        child: Text("Welcome to Instagram"),
      ),
    );
  }
}