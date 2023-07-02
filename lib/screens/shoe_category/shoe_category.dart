import 'package:flutter/material.dart';
import 'package:shoe_store/widgets/constants.dart';

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
            title: const Text(
              'Shoe Catalog',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            backgroundColor: kPrimaryColor),
        body: ListView(children: const [
          Text('Shoe Category'),
        ]));
  }
}
