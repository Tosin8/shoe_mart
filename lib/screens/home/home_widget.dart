import 'package:flutter/material.dart';

class searchBtn extends StatelessWidget {
  const searchBtn({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(2, 2))
        ],
      ),
      child: TextField(
        controller: _searchController,
        onChanged: (value) {},
        decoration: const InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Search Product',
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}

ClipRRect advertBanner() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(12.0),
    child: Image.asset(
      'assets/image/banner.jpg',
      fit: BoxFit.cover,
      height: 150,
    ),
  );
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productname,
    required this.categoryname,
    required this.categorycolor,
    required this.image,
    required this.price,
  });

  final String productname;

  final String categoryname;

  final String categorycolor;

  final String image;

  final int price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          Positioned(
            left: 45,
            top: 194,
            child: Text(
              productname,
              style: const TextStyle(
                color: Color(0xFF257074),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 45,
            top: 222,
            child: Text(
              categoryname,
              style: const TextStyle(
                color: Color(0x99257074),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 45,
            top: 249,
            child: Text(
              categorycolor,
              style: const TextStyle(
                color: Color(0x99257074),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 45,
            top: 286,
            child: Text(
              price.toString(),
              style: const TextStyle(
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 174,
            top: 277,
            child: SizedBox(
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

class AdidasCard extends StatefulWidget {
  const AdidasCard({super.key});

  @override
  State<AdidasCard> createState() => _AdidasCardState();
}

class _AdidasCardState extends State<AdidasCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              decoration: const BoxDecoration(color: Color(0x00D9D9D9)),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 174,
              height: 154,
              decoration: ShapeDecoration(
                color: const Color(0xFFFCF7F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
          ),
          Positioned(
            left: 6,
            top: 72.87,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-0.55),
              child: Container(
                width: 130,
                height: 84,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                        "assets/products/devinbooker_basket_nike.png"),
                    fit: BoxFit.fill,
                  ),
                  boxShadow: [
                    const BoxShadow(
                            color: Color.fromARGB(255, 156, 153, 153),
                            spreadRadius: 1,
                            blurRadius: 25,
                            offset: Offset(0, 10))
                        .scale(3),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
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
          const Positioned(
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
          const Positioned(
            left: 108,
            top: 165,
            child: SizedBox(width: 18, height: 12, child: Icon(Icons.star)),
          ),
          const Positioned(
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
              child: const Icon(Icons.favorite_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
