import 'package:flutter/material.dart';
import 'package:signup_page/Component/Layout.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'OnBoardingPages/page_one.dart';
import 'OnBoardingPages/page_three.dart';
import 'OnBoardingPages/page_two.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: const <Widget>[
              PageOne(),
              PageTwo(),
              PageThree(),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Layout();
                      }));
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),                  ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    onDotClicked: (index) => {
                      controller.jumpToPage(index),
                      setState(() {
                        currentIndex = index;
                      })
                    },
                    count: 3,
                    effect: const WormEffect(
                      type: WormType.thinUnderground,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (currentIndex >= 2) {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const Layout();
                        }));
                      }
                      controller.jumpToPage(++currentIndex);
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
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

  // // Go to NextPage Method
  // void Function()? goToNext(){
  //   controller
  // }
}
