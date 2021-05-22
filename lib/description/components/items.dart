import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LittleItems extends StatelessWidget {
  const LittleItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/svg/waterdrop.svg',
          height: 30,
          width: 30,
          color: Color(0xFFB9952F),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '250ml',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            Text(
              'WATER',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        SvgPicture.asset(
          'assets/svg/light.svg',
          height: 30,
          width: 30,
          color: Color(0xFFB9952F),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '35-40%',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            Text(
              'LIGHT',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        SvgPicture.asset(
          'assets/svg/atom.svg',
          height: 30,
          width: 30,
          color: Color(0xFFB9952F),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '250ml',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            Text(
              'FERTILIZER',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ],
    );
  }
}
