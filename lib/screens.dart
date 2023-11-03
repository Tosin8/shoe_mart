import 'package:flutter/material.dart';

import 'screens/cart/cart.dart';
import 'screens/home/home.dart';
import 'screens/save/save.dart';
import 'screens/user/user.dart';

class ScreenPages extends StatefulWidget {
  const ScreenPages({super.key});

  @override
  State<ScreenPages> createState() => _ScreenPagesState();
}

class _ScreenPagesState extends State<ScreenPages> {
  int currentIndex = 0;

  final List screens = const [
    Home(),
    SaveItem(),
    Cart(),
    User(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // to make it stable.
        currentIndex: currentIndex,
        onTap: (value) {
          setState(
            () {
              currentIndex = value;
            },
          );
        },
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Saved Items'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
