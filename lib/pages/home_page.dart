import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/feed_page.dart';
import 'package:ngdemo5/services/colors_service.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages=[
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

 int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        //backgroundColor: Color.fromRGBO(0, 127, 255, 1),
        // backgroundColor: HexColor("#007FFF"),
        // android ba iosda bir xil ochilishi uchun
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.grey),
        ),
        // chapdan yaratib beradi
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.camera_alt_outlined,color: Colors.grey,),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.tv,color: Colors.grey,),
          ), IconButton(
            onPressed: (){},
            icon: Icon(Icons.send_sharp,color: Colors.grey,),
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex:currentPage,
        onTap:(i){
          setState(() {
            currentPage=i;
          });
        },
        type:BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon:Icon (Icons.home), label: "Home"),
          BottomNavigationBarItem(icon:Icon (Icons.search),label:"Search" ),
          BottomNavigationBarItem(icon:Icon (Icons.add_box_outlined),label: "Upload"),
          BottomNavigationBarItem(icon:Icon (Icons.favorite_border),label:"Likes" ),
          BottomNavigationBarItem(icon:Icon (Icons.person),label:"Profile" ),
        ],
      ),
    );
  }
}