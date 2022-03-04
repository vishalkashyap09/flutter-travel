import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class ImageDetailCard extends StatelessWidget {
  final String destination;
  final String location;
  final String imageUrl;

  const ImageDetailCard({
    Key? key,
    required this.destination,
    required this.location,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: 343,
        height: 385,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        height: 150,
        width: 312,
        margin: EdgeInsets.only(top: 218, left: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kWhiteColor.withOpacity(0),
                Colors.black.withOpacity(0.95),
              ]),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 290, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              destination,
              style: whiteTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icon_location.png",
                        width: 10,
                      ),
                      SizedBox(width: 5),
                      Text(
                        location,
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 140),
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icon_share.png",
                        width: 25,
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        "assets/icon_love.png",
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Stack(
      children: [
        backgroundImage(),
        customShadow(),
        content(),
      ],
    );
  }
}
