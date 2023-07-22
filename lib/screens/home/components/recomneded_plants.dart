//
//

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/recomended_plant.dart';

import '../../details/details_screen.dart';

class Recommendedplants extends StatelessWidget {
  const Recommendedplants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedPlant(
            title: 'samanth',
            country: 'russia',
            price: 400,
            image: 'assets/images/image_1.png',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
          ),
          RecomendedPlant(
            title: 'samantha',
            country: 'russia',
            price: 400,
            image: 'assets/images/image_2.png',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
          ),
          RecomendedPlant(
            title: 'samantha',
            country: 'russia',
            price: 400,
            image: 'assets/images/image_3.png',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
