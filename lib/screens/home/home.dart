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
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kAccentColor),
            ),
            const Text('The best of shoes in one place!',
                style: TextStyle(color: kAccentColor)),
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
                  price: 80,
                ),
                ProductCard(
                  productname: "Nike Airforce",
                  categoryname: "Men's Shoe",
                  categorycolor: "2 Colors",
                  image: "assets/products/airforce/1.png",
                  price: 80,
                ),
                ProductCard(
                  productname: "Nike Airforce",
                  categoryname: "Men's Shoe",
                  categorycolor: "2 Colors",
                  image: "assets/products/airforce/1.png",
                  price: 80,
                ),
                ProductCard(
                  productname: "Nike Airforce",
                  categoryname: "Men's Shoe",
                  categorycolor: "2 Colors",
                  image: "assets/products/airforce/1.png",
                  price: 80,
                ),
                ProductCard(
                  productname: "Nike Airforce",
                  categoryname: "Men's Shoe",
                  categorycolor: "2 Colors",
                  image: "assets/products/airforce/1.png",
                  price: 80,
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
            const SizedBox(height: 6),
            Container(
              width: 177,
              height: 277,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 177,
                      height: 277,
                      decoration: BoxDecoration(color: Color(0x00D9D9D9)),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 174,
                      height: 154,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFCF7F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 72.87,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-0.55),
                      child: Container(
                        width: 115,
                        height: 66,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/products/devinbooker_basket_nike.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 53,
                    top: 125.47,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-0.57),
                      child: Container(
                        width: 91.31,
                        height: 5.53,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 170,
                    child: SizedBox(
                      width: 63,
                      child: Text(
                        '\$129.00',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 191,
                    child: SizedBox(
                      width: 93,
                      child: Text(
                        'Nike Lebron 8',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 132,
                    top: 170,
                    child: SizedBox(
                      width: 21,
                      child: Text(
                        '4.8',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 20,
                    child: Container(
                      width: 17,
                      height: 17,
                      child: Icon(Icons.favorite_outlined),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
