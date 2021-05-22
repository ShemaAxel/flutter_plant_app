import 'package:flutter/material.dart';

import 'items.dart';

class DescriptionDetails extends StatelessWidget {
  const DescriptionDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Details',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 35,
          ),
        ),
        SizedBox(
          height: 18,
        ),
        LittleItems(),
        SizedBox(
          height: 18,
        ),
        Divider(
          height: 18,
          thickness: 1,
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar varius sapien '
          'sed iaculis. Vivamus convallis felis rutrum mauris tincidunt fermentum. '
          'Mauris iaculis dolor ullamcorper ipsum tincidunt pellentesque. '
          'Integer porttitor faucibus ante quis ullamcorper. Donec mauris nibh, '
          'scelerisque eget lorem laoreet, facilisis commodo massa. '
          'Pellentesque eget lacinia neque.',
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Review',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xFF1E5B36),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xFF1E5B36),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xFF1E5B36),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xFF1E5B36),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xFF1E5B36),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
