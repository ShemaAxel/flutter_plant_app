import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListComponent extends StatelessWidget {
  const ListComponent({
    Key key,
    @required this.size,
    @required this.imgPath,
    @required this.plantName,
    @required this.plantPrice,
  }) : super(key: key);

  final Size size;
  final String imgPath;
  final String plantName;
  final String plantPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(3.0),
      height: 130,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Color(0xFFE5E5E5)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Hero(
            tag: imgPath,
            child: Image(
              image: AssetImage(imgPath),
              height: 110,
              width: 110,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                plantName,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                plantPrice,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Row(
            children: [
              Card(
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
              SizedBox(
                width: 10,
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.add_shopping_cart_outlined,
                    size: 38,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
