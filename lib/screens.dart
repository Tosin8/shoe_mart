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
  int _currentIndex = 0;

  final List _pages = const [
    Home(),
    SaveItem(),
    Cart(),
    User(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // to make it stable.
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Saved Items'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],

        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
      body: _pages.elementAt(_currentIndex),
    );
  }
}
