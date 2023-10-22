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
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 6,
                        offset: const Offset(2, 2),
                        spreadRadius: 3),
                  ],
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/products/zoom_pegasus/1.png'),
                  const Text(
                    'Nike Zoom Pegasus',
                    style: TextStyle(
                        color: kSecondaryColor, fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    'Men\'s Shoe',
                    style: TextStyle(
                        color: kSecondaryColor, fontWeight: FontWeight.w400),
                  ),
                  const Text('3 Colors'),
                ],
              ),
            )

            // Tab
            // DefaultTabController(
            //     length: 7,
            //     child: TabBar(
            //       onTap: (selectedTabIndex) {},
            //       isScrollable: true,
            //       tabs: const [
            //         Tab(
            //           child: Text('Adidas'),
            //         ),
            //         Tab(
            //           child: Text('Air Jordan'),
            //         ),
            //         Tab(
            //           child: Text('Gucci'),
            //         ),
            //         Tab(
            //           child: Text('New Balance'),
            //         ),
            //         Tab(
            //           child: Text('Nike'),
            //         ),
            //         Tab(
            //           child: Text('Puma'),
            //         ),
            //         Tab(
            //           child: Text('Reebok'),
            //         ),
            //       ],
            //     )),
          ]),
        ));
  }
}
