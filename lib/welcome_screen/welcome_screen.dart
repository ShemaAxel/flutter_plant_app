import 'package:flutter/material.dart';
import 'package:plant_linkedin/home/home.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      margin: EdgeInsets.only(left: 30),
      child: SingleChildScrollView(
        child: Body(size: size),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 140),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: -190,
            bottom: 10,
            child: Image(
              image: AssetImage('assets/images/plant6.png'),
              height: 470,
              width: 470,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'herb',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 40),
                  ),
                  Text(
                    'club.',
                    style: TextStyle(
                        color: Color(0xFF14461F),
                        fontWeight: FontWeight.w700,
                        fontSize: 40),
                  ),
                ],
              ),
              SizedBox(
                height: 180,
              ),
              Padding(
                padding: EdgeInsets.only(right: 120),
                child: Text(
                  'Know your herbs. Like a pro!',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
                      fontSize: 42),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Home();
                    }),
                  );
                },
                child: Button(size: size),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: size.width,
      margin: EdgeInsets.only(right: 40),
      decoration: BoxDecoration(
        color: Color(0xFF1E5B36),
        borderRadius: BorderRadius.circular(18),
        shape: BoxShape.rectangle,
      ),
      child: Text(
        'Get started',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
      ),
    );
  }
}
