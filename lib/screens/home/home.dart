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
  final TextEditingController _searchController = new TextEditingController();
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
            Container(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const ProductCard(),
                  const ProductCard(),
                  const ProductCard(),
                ],
              ),
            ),

            const SizedBox(height: 6),

            // Tab
            DefaultTabController(
                length: 7,
                child: TabBar(
                  onTap: (selectedTabIndex) {},
                  isScrollable: true,
                  tabs: const [
                    Tab(
                      child: Text('Adidas'),
                    ),
                    Tab(
                      child: Text('Air Jordan'),
                    ),
                    Tab(
                      child: Text('Gucci'),
                    ),
                    Tab(
                      child: Text('New Balance'),
                    ),
                    Tab(
                      child: Text('Nike'),
                    ),
                    Tab(
                      child: Text('Puma'),
                    ),
                    Tab(
                      child: Text('Reebok'),
                    ),
                  ],
                )),
          ]),
        ));
  }
}

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final String Productname;
  final String Categoryname;
  final String Categorycolor;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 243,
      height: 327,
      child: Stack(
        children: [
          Positioned(
            left: 21,
            top: 0,
            child: Container(
              width: 202,
              height: 327,
              decoration: ShapeDecoration(
                color: const Color(0xFFF8F8F8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            left: 45,
            top: 194,
            child: Text(
              'Nike Zoom Pegasus',
              style: TextStyle(
                color: Color(0xFF257074),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 45,
            top: 222,
            child: Text(
              'Men’s Shoe',
              style: TextStyle(
                color: Color(0x99257074),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 45,
            top: 249,
            child: Text(
              '3 Colors',
              style: TextStyle(
                color: Color(0x99257074),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 45,
            top: 286,
            child: Text(
              '\$80.00',
              style: TextStyle(
                color: Color(0x99F1178D),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 8,
            child: Container(
              width: 243,
              height: 182,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/products/zoom_pegasus/1.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 174,
            top: 277,
            child: Container(
              width: 36,
              height: 36,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF257074),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 17,
                    top: 10,
                    child: Container(
                      width: 2,
                      height: 18,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 9,
                    top: 20,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-1.57),
                      child: Container(
                        width: 2,
                        height: 18,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
