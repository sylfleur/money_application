import 'package:flutter/material.dart';
import 'package:money_application/misc/colors.dart';
import 'package:money_application/screens/widget/app_large_text.dart';
import 'package:money_application/screens/widget/responsive_button.dart';

import 'widget/app_text.dart';

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
  List<String> textTitleOnboarding = [
    'Save your money conveniently.',
    'Secure your money for free and get rewards.',
    'Enjoy commission-free stock trading.',
  ];
  List<String> textOnboarding = [
    '''
Get 5% cash back for each
transaction and spend it easily.
    ''',
    '''
Get the most secure payment
app ever and enjoy it.
     ''',
    '''
Online investing has never been
easier than it is right now.
''',
  ];
  List<String> buttontext = [
    'Next',
    'Next',
    'Get Started',
  ];

  List<IconData> icon = [
    Icons.arrow_forward,
    Icons.arrow_forward,
    Icons.arrow_forward,
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          // SizedBox(height: 50.0,),
          Expanded(
            flex: 2,
            child: Image.asset('assets/images/onboarding/onboardingLogo.png'),
          ),
          Expanded(
            flex: 6,
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
                    // color: Colors.amber,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: screenHeight/3),
                        AppLargeText(
                          text: textTitleOnboarding[index],
                        ),
                        SizedBox(height: screenHeight/30),
                        AppText(
                          text: textOnboarding[index],
                        ),
                        SizedBox(height: screenHeight/30),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: List.generate(
                                3,
                                (indexDots) {
                                  return Container(
                                    width: index == indexDots ? 25 : 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: index == indexDots
                                          ? AppColors.mainColor
                                          : AppColors.mainGreyDotColor,
                                    ),
                                  );
                                },
                              ),
                            ),
                            ResponsiveButton(
                              width: buttontext[index]=='Next'? 180: 230,
                              text: buttontext[index],
                              icon: buttontext[index]=='Next'? icon[index] : null,
                            ),
                          ],
                        ),
                      ],
                    ),
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
