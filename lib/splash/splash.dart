import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/splash_image.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.4),
              ], begin: Alignment.bottomRight)),
              child: const Stack(children: [
                Positioned(
                  left: 15,
                  child: Text(
                    'Shoe\nMart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Find your best collections',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Brand New Perspective',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      SizedBox(height: 12),
                      Container(
                        decoration: BoxDecoration(),
                      ),
                    ],
                  ),
                ),
              ]),
            )),
      ),
    );
  }
}
