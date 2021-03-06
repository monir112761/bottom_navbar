import 'package:bottom_navbar/screens/about_page.dart';
import 'package:bottom_navbar/screens/cart_page.dart';
import 'package:bottom_navbar/screens/home_page.dart';
import 'package:bottom_navbar/screens/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages =[ HomePage(), CartPage(), AboutPage(), ProfilePage()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation Bar'),),
      body: pages [ index ],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (value){
          setState(() {
            index=value;
          });
    },
      items:[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.chat_rounded), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: 'Cart'),
      ]
      ),
    );
  }
}