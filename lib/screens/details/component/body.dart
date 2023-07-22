//
//

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
import 'package:plant_app/screens/details/component/title_price.dart';

import 'icon_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.8,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 30),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Column(
                              children: [
                                IconCard(
                                  icon: Icons.sunny,
                                ),
                                IconCard(
                                  icon: Icons.thermostat,
                                ),
                                IconCard(
                                  icon: Icons.water_drop,
                                ),
                                IconCard(
                                  icon: Icons.anchor,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 20,
                        color: kPrimaryColor.withOpacity(0.3),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      topLeft: Radius.circular(60),
                    ),
                    image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        image: AssetImage('assets/images/img.png'),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          ),
          TitlePrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          Row(
            children: [
              SizedBox(
                height: 65,
                width: size.width / 2,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    minimumSize: Size(88, 44),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                    )),
                    backgroundColor: kPrimaryColor,
                  ),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    minimumSize: Size(88, 44),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                    )),
                  ),
                  child: Text(
                    'Description',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
