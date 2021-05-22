import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_linkedin/models/plant.dart';

import 'description_details.dart';

class BottomLevel extends StatelessWidget {
  const BottomLevel({
    Key key,
    @required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              top: -190,
              right: -30,
              child: Hero(
                tag: plant.imageUrl,
                child: Image(
                  image: AssetImage(plant.imageUrl),
                  height: 320,
                  width: 320,
                ),
              ),
            ),
            Positioned(
              top: -30,
              left: 20,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  child: FaIcon(
                    FontAwesomeIcons.heart,
                    size: 32,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: EdgeInsets.only(top: 45),
              child: DescriptionDetails(),
            )
          ],
        ),
      ),
    );
  }
}
