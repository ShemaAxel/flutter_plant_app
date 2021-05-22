import 'package:flutter/material.dart';
import 'package:plant_linkedin/models/plant.dart';
import '../bottom_navigator.dart';
import 'components/bottom_level.dart';
import 'components/top_level.dart';

class Description extends StatelessWidget {
  final Plant plant;

  const Description({Key key, this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF1E5B36),
      body: SafeArea(
        child: Body(size: size, plant: plant),
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
    @required this.plant,
  }) : super(key: key);

  final Size size;
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TopLevel(size: size, plant: plant),
        BottomLevel(plant: plant),
      ],
    );
  }
}
