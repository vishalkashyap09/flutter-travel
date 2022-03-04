import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widget/button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_onboarding.png',
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Discover a Hotel & Resort to \nBook a Suitable Room',
              style: blackTextStyle.copyWith(
                fontSize: 26,
                fontWeight: medium,
                height: 1.25,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 18),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'The hotel and resort business is one of the best and loyal business in the global market. We are the agency that helps to book you a good room in a suitable palace at a reasonable price.',
                style: semiBlackTextStyle.copyWith(
                  height: 1.25,
                  fontWeight: regular,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 18),
            Image.asset(
              "assets/icon_slider.png",
              width: 35,
            ),
            SizedBox(
              height: 50,
            ),
            Button(
              width: 243,
              height: 54,
              fontSize: 22,
              content: 'Get Started',
              onClick: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/home',
                  (route) => false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
