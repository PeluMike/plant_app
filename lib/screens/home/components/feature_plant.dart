//
//

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FeaturePlants extends StatelessWidget {
  final String image;
  final Function press;

  const FeaturePlants({
    super.key,
    required this.image,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        press;
      },
      child: Container(
        width: size.width * 0.6,
        margin: EdgeInsets.only(
          top: 10,
          left: 30,
          bottom: 10,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          // vertical: 10,
        ),
        height: 165,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            )),
      ),
    );
  }
}
