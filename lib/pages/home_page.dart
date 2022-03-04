import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widget/popular_card.dart';
import 'package:travel_app/widget/property_card.dart';
import 'package:travel_app/widget/tab_destination.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      Widget header() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 28),
              child: Row(
                children: [
                  Image.asset(
                    'assets/image_profil.png',
                    width: 43.5,
                    height: 43.5,
                  ),
                  SizedBox(width: 16),
                  Row(
                    children: [
                      Text(
                        "Hello, ",
                        style: blackTextStyle,
                      ),
                      Text(
                        "Person !",
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Image.asset(
              "assets/icon_notification.png",
              width: 52,
            ),
          ],
        );
      }

      Widget findYourStay() {
        return Container(
          margin: EdgeInsets.only(bottom: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find Your Stay',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 279,
                    height: 43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhiteColor,
                    ),
                  ),
                  Image.asset(
                    'assets/icon_filter.png',
                    width: 64,
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      TabDestination(
                        imageAsset: "assets/image_destination1.png",
                        content: "Orissa",
                      ),
                      SizedBox(width: 28),
                      TabDestination(
                        imageAsset: "assets/image_destination2.png",
                        content: "Tamil Nadu",
                      ),
                      SizedBox(width: 28),
                      TabDestination(
                        imageAsset: "assets/image_destination3.png",
                        content: "Punjab",
                      ),
                      SizedBox(width: 28),
                      TabDestination(
                        imageAsset: "assets/image_destination4.png",
                        content: "Uttar Pradesh",
                      ),
                      SizedBox(width: 28),
                      TabDestination(
                        imageAsset: "assets/image_destination4.png",
                        content: "Jharkhand",
                      ),
                      SizedBox(width: 28),
                      TabDestination(
                        imageAsset: "assets/image_destination4.png",
                        content: "Bihar",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget exploreThese() {
        return Container(
          margin: EdgeInsets.only(bottom: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore These',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "View All",
                    style: orangeTextStyle,
                  )
                ],
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      PropertyCard(
                        imageUrl: "assets/image_property1.png",
                        title: "Kedarnath",
                        location: "Uttarakhand",
                        onClick: () {
                          Navigator.pushNamed(context, "/detail-page");
                        },
                      ),
                      SizedBox(width: 36),
                      PropertyCard(
                        imageUrl: "assets/image_property2.png",
                        title: "Golden Temple",
                        location: "Punjab",
                        onClick: () {},
                      ),
                      SizedBox(width: 23),
                      PropertyCard(
                        imageUrl: "assets/image_property2.png",
                        title: "Mahalakshmi",
                        location: "Tamil Nadu",
                        onClick: () {},
                      ),
                      SizedBox(width: 23),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget popular() {
        return Container(
          margin: EdgeInsets.only(bottom: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "View All",
                    style: orangeTextStyle,
                  )
                ],
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      PopularCard(
                        imageUrl: "assets/image_popular1.png",
                        title: "Jagannath",
                        location: "Orissa",
                      ),
                      SizedBox(width: 15),
                      PopularCard(
                        imageUrl: "assets/image_popular2.png",
                        title: "Bodhgaya",
                        location: "Bihar",
                      ),
                      SizedBox(width: 23),
                      PopularCard(
                        imageUrl: "assets/image_popular2.png",
                        title: "Ajmer Sharif",
                        location: "Rajasthan",
                      ),
                      SizedBox(width: 23),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }

      return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            left: 23,
            right: 23,
            top: 27,
            bottom: 100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              findYourStay(),
              exploreThese(),
              popular(),
            ],
          ),
        ),
      );
    }

    Widget customNavigation() {
      return Align(
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/icon_home_active.png",
                width: 42,
              ),
              Image.asset(
                "assets/icon_bell.png",
                width: 22,
              ),
              Image.asset(
                "assets/icon_wishlist.png",
                width: 16,
              ),
              Image.asset(
                "assets/icon_profile.png",
                width: 22,
              ),
            ],
          ),
        ),
        alignment: Alignment.bottomCenter,
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            content(),
            customNavigation(),
          ],
        ),
      ),
    );
  }
}
