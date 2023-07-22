// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../details/component/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
