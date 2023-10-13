import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  bool isTapped = false;

  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  bool hide = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scaleController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(_scaleController);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
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
                          onTap: () {
                            setState(() {
                              hide = true;
                            });
                            _scaleController.forward();
                          },
                          child: AnimatedBuilder(
                            animation: _scaleController,
                            builder: (context, child) => Transform.scale(
                              scale: _scaleAnimation.value,
                              child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white),
                                  child: Center(
                                    child: hide == false
                                        ? const Text(
                                            'Start Shopping ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          )
                                        : Container(),
                                  )),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onHighlightChanged: (value) {
                            setState(() {
                              isTapped = value;
                            });
                          },
                          onTap: () {},
                          child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.fastLinearToSlowEaseIn,
                              height: isTapped ? 50 : 55,
                              width: isTapped ? 200 : 250,
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
