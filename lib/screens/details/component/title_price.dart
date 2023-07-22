//
//

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constant.dart';

class TitlePrice extends StatelessWidget {
  const TitlePrice({
    super.key,
    required this.title,
    required this.country,
    required this.price,
  });

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$title\n',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: kTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    TextSpan(
                      text: country,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: kPrimaryColor,
                          fontSize: 17),
                    ),
                  ],
                ),
              ),
              Text(
                '\$$price',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
