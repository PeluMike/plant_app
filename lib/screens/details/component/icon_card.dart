//
//

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';

class IconCard extends StatelessWidget {
  const IconCard({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20,
              color: kPrimaryColor.withOpacity(0.3),
            ),
          ]),
      child: Icon(
        icon,
        color: Colors.green,
        size: 30,
      ),
    );
  }
}
