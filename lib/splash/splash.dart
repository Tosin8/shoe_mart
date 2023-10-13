import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/image/splash_image.jpg'),
                fit: BoxFit.cover,
              )),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.4)
                    ], begin: Alignment.bottomRight)),
                  ),
                  const Positioned(
                    top: 25,
                    left: 10,
                    child: Text(
                      'Shoe Mart',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Find your best collections',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText('Brand New Perspective',
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                                speed: const Duration(milliseconds: 300),
                                textAlign: TextAlign.center),
                          ],
                          //  totalRepeatCount: 8,
                          pause: const Duration(milliseconds: 500),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                          repeatForever: true,
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: const Center(
                                child: Text(
                                  'Start Shopping ',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              )),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.white)),
                              child: const Center(
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
