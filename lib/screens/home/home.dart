import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoe_store/extensions/constants.dart';

import 'home_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();

  final List<String> _adidaslistItem = [
    'assets/products/adidas/1.jpg',
    'assets/products/adidas/2.jpg',
    'assets/products/adidas/3.jpg',
    'assets/products/adidas/4.jpg',
    'assets/products/adidas/5.jpg',
    'assets/products/adidas/6.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // elevation: 1,
          centerTitle: true,
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          automaticallyImplyLeading: false,
          actions: [
            Stack(children: [
              Positioned(
                top: 10,
                left: 8,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(2, 2))
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/bell.svg'))
            ]),
          ], // remove back button in appbar.
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: [
            const Text(
              'Shoes Collections',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: kAccentColor),
            ),
            const Text('The best of shoes in one place!',
                style: TextStyle(color: kAccentColor, fontSize: 16)),
            const SizedBox(height: 10),
            searchBtn(searchController: _searchController),
            const SizedBox(height: 10),
            advertBanner(),
            const SizedBox(height: 15),

            // Creating categories.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recommended',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(color: kSecondaryColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            SizedBox(
              height: 350,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: const [
                ProductCard(
                  productname: "Nike Zoom Pegasus",
                  categoryname: "Men's Shoe",
                  categorycolor: "3 Colors",
                  image: "assets/products/zoom_pegasus/1.png",
                  price: '\$80.00',
                ),
                ProductCard(
                  productname: "Nike Airforce",
                  categoryname: "Men's Shoe",
                  categorycolor: "2 Colors",
                  image: "assets/products/airforce/1.png",
                  price: '\$60.00',
                ),
                ProductCard(
                  productname: "Nike Airforce",
                  categoryname: "Men's Shoe",
                  categorycolor: "2 Colors",
                  image: "assets/products/airforce/1.png",
                  price: '\$36.00',
                ),
                ProductCard(
                  productname: "Nike Airforce",
                  categoryname: "Men's Shoe",
                  categorycolor: "2 Colors",
                  image: "assets/products/airforce/1.png",
                  price: '\$58.00',
                ),
                ProductCard(
                  productname: "Nike Airforce",
                  categoryname: "Men's Shoe",
                  categorycolor: "2 Colors",
                  image: "assets/products/airforce/1.png",
                  price: '\$61.00',
                ),
              ]),
            ),

            const SizedBox(height: 6),
            Row(
              children: [
                Image.asset('assets/icons/brands/adidas.png'),
                const SizedBox(width: 5),
                const Text(
                  'Adidas',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            // adidas product grid.
            const SizedBox(height: 15),
            Expanded(child: GridView.count(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10,))
          ]),
        ));
  }
}
