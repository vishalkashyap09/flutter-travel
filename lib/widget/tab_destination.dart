import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class TabDestination extends StatelessWidget {
  final String imageAsset;
  final String content;

  const TabDestination({
    Key? key,
    required this.imageAsset,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageAsset,
          width: 61,
        ),
        SizedBox(height: 7),
        Text(
          content,
          style: blackTextStyle.copyWith(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
