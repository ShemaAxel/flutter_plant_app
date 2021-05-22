import 'package:flutter/material.dart';
import 'package:plant_linkedin/models/plant.dart';

class TopLevel extends StatelessWidget {
  const TopLevel({
    Key key,
    @required this.size,
    @required this.plant,
  }) : super(key: key);

  final Size size;
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.37,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF1E5B36),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 40,
                color: Color(0xFFE5E5E5),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              plant.name,
              style: TextStyle(
                color: Color(0xFFE5E5E5),
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'TYPE',
              style: TextStyle(
                  color: Color(0xFFE5E5E5),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Organic Grown',
              style: TextStyle(
                  color: Color(0xFFE5E5E5),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'SIZE',
              style: TextStyle(
                  color: Color(0xFFE5E5E5),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '4,H',
              style: TextStyle(
                  color: Color(0xFFE5E5E5),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'PRICE',
              style: TextStyle(
                  color: Color(0xFFE5E5E5),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              plant.price,
              style: TextStyle(
                  color: Color(0xFFE5E5E5),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
