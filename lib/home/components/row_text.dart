import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  const RowText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'All Herbs',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1E5B36),
            ),
          ),
          Text(
            'Fresh',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
          Text(
            'Dried',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
          Text(
            'In Planter',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
