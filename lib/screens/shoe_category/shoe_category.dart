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
        body: ListView(children: [
          Container(
            padding: const EdgeInsets.all(2),
            height: 120,
            child: Card(
              child: Row(
                children: [
                  Image.asset('assets/products/shoe1.jpg'),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        'Nike Shoe 1',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text('Price'),
                    ],
                  ))
                ],
              ),
            ),
          )
        ]));
  }
}
