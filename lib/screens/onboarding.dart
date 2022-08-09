import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<String> images = [
    'onboarding1.png',
    'onboarding2.png',
    'onboarding3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // SizedBox(height: 50.0,),
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/onboarding/onboardingLogo.png'),
          ),
          Expanded(
            flex: 3,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (_, index) {
                return Container(
                  // width: double.maxFinite,
                  // height: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/onboarding/${images[index]}'),
                      alignment: Alignment.bottomLeft,
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: Column(
                    children: const <Widget>[],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
