import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widget/button.dart';
import 'package:travel_app/widget/image_detail_card.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  get kBackgroundColor => null;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
            child: Image.asset(
              'assets/icon_back.png',
              width: 60,
              height: 60,
            ),
          ),
          Text(
            "Details",
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          Image.asset(
            "assets/icon_three_dots.png",
            width: 60,
            height: 60,
          ),
        ],
      );
    }

    Widget detailContent() {
      return Container(
        child: Column(
          children: [
            ImageDetailCard(
              destination: "Misty Rock Resort",
              location: "Wayanan",
              imageUrl: "assets/image_header_detail.png",
            ),
            SizedBox(height: 16.5),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/image_detail1.png",
                    width: 61,
                  ),
                  Image.asset(
                    "assets/image_detail2.png",
                    width: 61,
                  ),
                  Image.asset(
                    "assets/image_detail3.png",
                    width: 61,
                  ),
                  Image.asset(
                    "assets/image_detail4.png",
                    width: 61,
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Button(
                    width: 80,
                    height: 32,
                    fontSize: 14,
                    marginLeft: 0,
                    marginRight: 0,
                    borderRadius: 7,
                    content: "Detail",
                    onClick: () {},
                    isThereIcon: false,
                    isUsingShadow: false,
                  ),
                  SizedBox(width: 15),
                  Button(
                    width: 80,
                    height: 32,
                    fontSize: 14,
                    marginLeft: 0,
                    marginRight: 0,
                    borderRadius: 7,
                    content: "Review",
                    onClick: () {},
                    isThereIcon: false,
                    isUsingShadow: false,
                    color: kWhiteColor,
                    textStyle: blackTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 23),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ea non tempor et laborum proident laborum aliquip tempor aliquip excepteur aliqua culpa in eu. Dolore commodo eu velit commodo id id. Labore proident velit occaecat reprehenderit ullamco aliqua reprehenderit exercitation. nostrud mollit amet. Pariatur deserunt amet exercitation duis",
                    style: GoogleFonts.roboto().copyWith(
                      color: kGreyColor,
                      height: 2,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Read more...",
                    style: GoogleFonts.roboto().copyWith(
                      color: kOrangeColor,
                      height: 2,
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$410",
                        style: blackTextStyle.copyWith(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        "/Person",
                        style: greyTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Button(
                  width: 180,
                  height: 56,
                  fontSize: 20,
                  content: "Continue",
                  onClick: () {},
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget priceAndButton() {
      return Container();
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              left: 23,
              right: 23,
              top: 27,
              bottom: 100,
            ),
            child: Column(
              children: [
                header(),
                SizedBox(height: 35),
                detailContent(),
                priceAndButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
