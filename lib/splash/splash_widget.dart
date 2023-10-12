import 'package:flutter/material.dart';

import '../widgets/constants.dart';

class BtnLogin extends StatelessWidget {
  const BtnLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // creating a route to the homepage.
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          //color: kPrimaryColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.white),
        ),
        child: const Center(
          child: Text(
            'Log In',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class BtnStart extends StatelessWidget {
  const BtnStart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // creating a route to the homepage.
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Center(
          child: Text(
            'Start Shopping',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
