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
