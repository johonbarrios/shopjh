import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopjh/src/utils/utils.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Dimension dimension = Dimension.of(context);
    return Container(
      height: dimension.hp(13),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/cats/bevidas.jpg',
            image_caption: 'Bevidas',
          ),
          Category(
            image_location: 'images/cats/erotica.jpg',
            image_caption: 'Erotica',
          ),
          Category(
            image_location: 'images/cats/gaseosas.jpg',
            image_caption: 'Gaseosas',
          ),
          Category(
            image_location: 'images/cats/mecatos.jpg',
            image_caption: 'Mekatos',
          ),
          Category(
            image_location: 'images/cats/medicamentos.jpg',
            image_caption: 'Medicamentos',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    final Dimension dimension = Dimension.of(context);
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          //width: 150.0,
          width: dimension.wp(40),
          child: ListTile(
            title: Image.asset(
              image_location,
              width: dimension.wp(10),
              height: dimension.hp(10),
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: new TextStyle(fontSize: 15.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
