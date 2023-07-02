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
        body: ListView(children: [Product_Details()]));
  }
}

class Product_Details extends StatelessWidget {
  const Product_Details({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    required this.description,
  });

  final String name;
  final String image;
  final int price;
  final int rating;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/products/shoe1.jpg'),
            const Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Nike Shoe 1',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text('Made with thick fibre materials'),
                Text('Price'),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
