import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoe_store/widgets/constants.dart';

class ShoeCategory extends StatefulWidget {
  const ShoeCategory({super.key});

  @override
  State<ShoeCategory> createState() => _ShoeCategoryState();
}

class _ShoeCategoryState extends State<ShoeCategory> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        // writing the navigation bar
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(displayWidth * .05),
          height: displayWidth * .155,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 30,
                offset: const Offset(0, 10),
                spreadRadius: 1,
              ),
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: ListView.builder(
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                        HapticFeedback.lightImpact();
                      });
                    },
                  )),
        ),
        appBar: AppBar(
            title: const Text(
              'Shoe Catalog',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            backgroundColor: kPrimaryColor),
        body: ListView(children: const [
          Product_Details(
            image: 'shoe1.jpg',
            name: 'Shoe 1',
            price: 100,
            ID: '1123011AJ',
          ),
        ]));
  }
}

// ignore: camel_case_types
class Product_Details extends StatelessWidget {
  const Product_Details({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.ID,
  });

  final String name;
  final String image;
  final int price;
  final String ID;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/products/$image'),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(price.toString(),
                    style: const TextStyle(fontWeight: FontWeight.w400)),
                Text('Product ID:$ID',
                    style: const TextStyle(fontWeight: FontWeight.w100)),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
