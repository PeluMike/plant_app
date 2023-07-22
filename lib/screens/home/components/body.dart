//

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:plant_app/screens/home/components/recomended_plant.dart';
import 'package:plant_app/screens/home/components/recomneded_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more.dart';
// import 'feature_plant.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          RecomendedMore(
            title: 'Reccomended',
            press: () {},
          ),
          Recommendedplants(),
          RecomendedMore(
            title: 'Featured Plants',
            press: () {},
          ),
          FeaturedPlants()
        ],
      ),
    );
  }
}
