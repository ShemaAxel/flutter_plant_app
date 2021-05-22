import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: 150,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Color(0xFF1E5B36),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Essential',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFC5E5E5),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Oils Herbs',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFE5E5E5),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: -15,
          bottom: -45,
          child: Container(
            child: Image(
              height: 175,
              width: 175,
              image: AssetImage(
                'assets/images/orange.png',
              ),
            ),
          ),
        )
      ],
    );
  }
}
