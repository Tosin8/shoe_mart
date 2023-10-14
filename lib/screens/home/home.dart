import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // elevation: 1,
          centerTitle: true,
          title: Text('Home'),
          automaticallyImplyLeading: false, // remove back button in appbar.
        ),
        body: ListView(
          children: [
            
          ],
        ));
  }
}
