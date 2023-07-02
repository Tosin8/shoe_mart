import 'package:flutter/material.dart';

class ShoeCategory extends StatefulWidget {
  const ShoeCategory({super.key});

  @override
  State<ShoeCategory> createState() => _ShoeCategoryState();
}

class _ShoeCategoryState extends State<ShoeCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Shoe Catalog'), backgroundColor: Colors.yellow),
        body: ListView(children: [
          Text('Shoe Category'),
        ]));
  }
}
