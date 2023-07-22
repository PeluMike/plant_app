//

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constant.dart';
import 'package:plant_app/screens/home/components/body.dart';

import 'components/bottom_navbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      bottomNavigationBar: MyBottomNavbar(),
      body: Body(),
    );
  }

  AppBar newMethod() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
        ),
        onPressed: () {},
      ),
    );
  }
}
